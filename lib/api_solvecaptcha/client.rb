require 'net/http'
require 'uri'
require 'json'
require 'base64'
require 'open-uri'
require 'net/http/post/multipart'


module ApiSolveCaptcha
  class Client
    DEFAULT_DOMAIN = "api.solvecaptcha.com"
    BASE_URL_FORMAT = "https://%s"

    attr_accessor :domain, :callback, :default_timeout,
                  :soft_id, :recaptcha_timeout,
                  :polling_interval, :api_key

    def initialize(api_key, callback = nil)
      @api_key = api_key
      @soft_id = nil
      @callback = callback
      @default_timeout = 120
      @recaptcha_timeout = 600
      @polling_interval = 5
      @domain = DEFAULT_DOMAIN
    end

    def solve(method, return_id: false, **params)
      params["method"] = method
      params["key"] = @api_key
      params["json"] = 1

      params["pingback"] = @callback if @callback

      complete_params = get_params(params)
      captcha_id = send_request(complete_params)
      return captcha_id if return_id

      get_result(captcha_id)
    end

    def normal(params)
      solve("post", **params)
    end

    def get_result(captcha_id)
      uri = URI("#{base_url}/res.php?key=#{@api_key}&action=get&id=#{captcha_id}&json=1")
      start_time = Time.now

      loop do
        response = make_request(uri)

        if response.is_a?(Net::HTTPSuccess)
          response_json = JSON.parse(response.body.strip)

          case response_json["request"]
          when "CAPCHA_NOT_READY"
            sleep @polling_interval
          when /[a-zA-Z0-9]+/
            return response_json
          else
            raise "API Error: #{response_json["request"]}"
          end
        else
          raise "Network Error: #{response.code}"
        end

        raise "Timeout" if Time.now - start_time > @default_timeout
      end
    end

    def report(captcha_id, is_correct)
      action = is_correct ? "reportgood" : "reportbad"
      uri = URI("#{base_url}/res.php?key=#{@api_key}&action=#{action}&id=#{captcha_id}")
      make_request(uri)
    end

    private

    def base_url
      BASE_URL_FORMAT % @domain
    end

    def get_params(params)
      params["image"].nil? ? params : file_params(params)
    end

    def file_params(params)
      image = params.delete("image")
      hint_image = params.delete("hint_image")

      image_content = if base64_encoded?(image)
        image
      else
        Base64.strict_encode64(get_image_content(image))
      end

      hint_image_content = if hint_image
                  base64_encoded?(hint_image) ? hint_image : Base64.strict_encode64(get_image_content(hint_image))
                  end

      result_params = {
        "method" => "base64",
        "body" => image_content,
        "filename" => File.basename(image),
        "ext" => File.extname(image).delete(".")
      }

      result_params["imginstructions"] = hint_image_content if hint_image_content
      params.merge(result_params)
    end

    def get_image_content(image)
      return download_image(image) if image.start_with?('http')
      return File.binread(image) if File.file?(image)
      image
    end

    def base64_encoded?(string)
      string.is_a?(String) && string.match(/\A[A-Za-z0-9+\/=]+\z/) && (string.length % 4).zero?
    end

    def download_image(url)
      response = URI.open(url)
      if response.status[0] != '200'
        raise StandardError, "File could not be downloaded from url: #{url}"
      end
      response.read
    end


    def send_request(params)
      uri = URI("#{base_url}/in.php")
    
      file_path = params.delete("image")
      file = UploadIO.new(File.open(file_path), mime_type(file_path), File.basename(file_path))
    
      form_data = params.merge("file" => file)
    
      req = Net::HTTP::Post::Multipart.new(uri.path, form_data)
    
      response = make_request(uri, req)
    
      if response.is_a?(Net::HTTPSuccess)
        parsed_response = JSON.parse(response.body.strip)
    
        raise "API Error: #{parsed_response["request"]}" unless parsed_response["status"] == 1
    
        parsed_response["request"]
      else
        raise "Network Error: #{response.code}"
      end
    end
    
    def mime_type(file_path)
      MIME::Types.type_for(file_path).first.to_s || "application/octet-stream"
    end
    

    def make_request(uri, req = nil)
      Net::HTTP.start(uri.hostname, uri.port, use_ssl: true) do |http|
        http.request(req || Net::HTTP::Get.new(uri))
      end
    end
  end
end

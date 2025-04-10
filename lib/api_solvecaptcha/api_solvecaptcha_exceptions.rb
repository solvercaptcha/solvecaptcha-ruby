module ApiSolveCaptcha
  class ValidationException < StandardError
    def initialize(message = 'Invalid parameters passed')
      super(message)
    end
  end

  class NetworkException < StandardError
    def initialize(message = 'Network error occurred')
      super(message)
    end
  end

  class ApiException < StandardError
    def initialize(message = 'API response error')
      super(message)
    end
  end

  class TimeoutException < StandardError
    def initialize(message = 'Captcha solving timed out')
      super(message)
    end
  end
end

require_relative '../lib/api_solvecaptcha'

client =  ApiSolveCaptcha.new("YOUR_API_KEY")

result = client.tencent({
  app_id: "197326679",
  pageurl: "https://mysite.com/page/with/tencent"
})

puts "Result: #{result.inspect}"
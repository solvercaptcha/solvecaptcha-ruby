require_relative "../lib/api_solvecaptcha"

client =  ApiSolveCaptcha.new("6663f112abc465058b7a9b448d3a0f54")

result = client.recaptcha_v2({
  googlekey: '6LfD3PIbAAAAAJs_eEHvoOl75_83eXSqpPSRFJ_u',
  pageurl: 'https://solvecaptcha.com/demo/recaptcha-v2',
})

puts "Result: #{result.inspect}"
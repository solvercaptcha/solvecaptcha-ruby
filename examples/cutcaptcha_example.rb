require_relative '../lib/api_solvecaptcha'

client = ApiSolveCaptcha::Client.new('YOUR_API_KEY')

result = client.cutcaptcha({'captchakey': 'CAPTCHAKEY', 'pageurl': 'https://example.com'})

puts result

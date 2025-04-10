require_relative '../lib/api_solvecaptcha'

client = ApiSolveCaptcha::Client.new('YOUR_API_KEY')

result = client.datadome({'captcha_url': 'https://example.com/captcha', 'pageurl': 'https://example.com'})

puts result

require_relative '../lib/api_solvecaptcha'

client = ApiSolveCaptcha::Client.new('YOUR_API_KEY')

result = client.mtcaptcha({'sitekey': 'SITEKEY', 'pageurl': 'https://example.com'})

puts result

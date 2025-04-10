require_relative '../lib/api_solvecaptcha'

client = ApiSolveCaptcha::Client.new('YOUR_API_KEY')

result = client.amazon_waf({'sitekey': 'SITEKEY', 'pageurl': 'https://example.com'})

puts result

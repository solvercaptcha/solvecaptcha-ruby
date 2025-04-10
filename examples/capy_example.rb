require_relative '../lib/api_solvecaptcha'

client = ApiSolveCaptcha::Client.new('YOUR_API_KEY')

result = client.capy({'sitekey': 'SITEKEY', 'pageurl': 'https://example.com', 'api_server': 'https://api.capy.me'})

puts result

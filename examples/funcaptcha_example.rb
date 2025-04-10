require_relative '../lib/api_solvecaptcha'

client = ApiSolveCaptcha::Client.new('YOUR_API_KEY')

result = client.funcaptcha({'publickey': 'PUBLICKEY', 'pageurl': 'https://example.com'})

puts result

require_relative '../lib/api_solvecaptcha'

client = ApiSolveCaptcha::Client.new('YOUR_API_KEY')

result = client.geetest({'gt': 'GT', 'challenge': 'CHALLENGE', 'api_server': 'https://api.geetest.com', 'pageurl': 'https://example.com'})

puts result

require_relative '../lib/api_solvecaptcha'

client = ApiSolveCaptcha::Client.new('YOUR_API_KEY')

result = client.cybersiara({'siara_id': 'SIARA_ID', 'pageurl': 'https://example.com'})

puts result

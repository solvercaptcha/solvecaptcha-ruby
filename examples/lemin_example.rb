require_relative '../lib/api_solvecaptcha'

client = ApiSolveCaptcha::Client.new('YOUR_API_KEY')

result = client.lemin({'captcha_id': 'CAPTCHA_ID', 'api_server': 'https://api.lemin.com', 'pageurl': 'https://example.com'})

puts result

require_relative '../lib/api_solvecaptcha'

client = ApiSolveCaptcha::Client.new('YOUR_API_KEY')

result = client.geetest_v4({'captcha_id': 'CAPTCHA_ID', 'lot_number': 'LOT_NUMBER', 'payload': '{}', 'pageurl': 'https://example.com'})

puts result

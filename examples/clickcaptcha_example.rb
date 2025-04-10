require_relative '../lib/api_solvecaptcha'

client = ApiSolveCaptcha::Client.new('YOUR_API_KEY')

result = client.clickcaptcha({'img': 'BASE64_IMAGE', 'coords': '120,50;140,70'})

puts result

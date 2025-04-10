require_relative '../lib/api_solvecaptcha'

client = ApiSolveCaptcha::Client.new('YOUR_API_KEY')

result = client.rotate({'body': 'BASE64_IMAGE'})

puts result

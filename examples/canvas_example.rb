require_relative '../lib/api_solvecaptcha'

client = ApiSolveCaptcha::Client.new('YOUR_API_KEY')

result = client.canvas({'canvas': 'BASE64_CANVAS_IMAGE'})

puts result

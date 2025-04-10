require_relative '../lib/api_solvecaptcha'

client = ApiSolveCaptcha::Client.new('YOUR_API_KEY')

result = client.keycaptcha({'s_s_c_user_id': 'USER_ID', 's_s_c_session_id': 'SESSION_ID', 's_s_c_web_server_sign': 'SIGN', 's_s_c_web_server_sign2': 'SIGN2', 'pageurl': 'https://example.com'})

puts result

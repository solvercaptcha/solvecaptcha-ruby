require_relative '../lib/api_solvecaptcha'

client =  ApiSolveCaptcha.new("YOUR_API_KEY")

result = client.grid({
  image: './media/recaptchaGrid4x4.jpg',
  rows: 4,
  cols: 4,
  lang: 'en',
  hint_image: './media/recaptchaGridImginstructions4x4.jpg',
  # hint_text: 'Select all squares with stairs'
})

puts "Result: #{result.inspect}"
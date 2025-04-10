require_relative '../lib/api_solvecaptcha'

client =  ApiSolveCaptcha.new("YOUR_API_KEY")

result = client.audio({
  audio: './media/example.mp3',
  lang: "en"
})

puts "Result: #{result.inspect}"
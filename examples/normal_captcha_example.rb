require_relative "../lib/api_solvecaptcha"

client = ApiSolveCaptcha.new("YOUR_API_KEY")

image_path = File.join(__dir__, 'media', 'normal_2.jpg')

puts "Image path: #{image_path}"
puts "File exists: #{File.exist?(image_path)}"
puts "File size: #{File.size?(image_path).to_i} bytes"

result = client.normal({
  image: image_path,
})

puts "Result: #{result.inspect}"

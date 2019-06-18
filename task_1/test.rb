require_relative 'message'

print "Given message body: "
body = gets

message = Message.new(body)

puts '-' * 80
puts "Processed message: #{message.body}"

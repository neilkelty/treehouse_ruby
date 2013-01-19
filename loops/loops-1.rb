i = 0
string = "Hello world"

while i <= 10
	string = "Hello World #{i}"
	puts "i is now #{i}"
	i += 1
end

puts "The final value of i is #{i}"
puts "The final value of string is #{string}"
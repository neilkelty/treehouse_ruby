def say_hello(&block)
	puts "Hello, world"
	block.call
end

# say_hello { puts "Hello again"}
# The curly braces have a higher priority inside the Ruby interpreter

say_hello do
	puts "Hello again"
end
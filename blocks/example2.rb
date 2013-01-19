def say_hello(&block)
	puts "Hello, world"
	name = block.call
	puts "You entered #{name} as your name."
end


# say_hello { "Jason" }

say_hello do
	puts "This is the inside of the say_hello block."
	"Neil"
end
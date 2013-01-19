name = ""

until name == "Neil" do
	print "What is your name?"
	name = gets.chomp
	puts "Hello, #{name}"
end
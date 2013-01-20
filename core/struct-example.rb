# Struct.new("Treehouse", :name, :location)

# treehouse = Struct::Treehouse.new
# treehouse.name = "Treehouse"
# treehouse.location = "Treehouse Island"

# puts treehouse.inspect

Island = Struct.new(:name, :location) do
	def to_s
		"<#{name}, #{location}>"		
	end

	def travel
		puts "Going to #{location} location..."
	end
end

treehouse = Island.new("Treehouse", "Undisclosed")

# puts treehouse

treehouse.travel
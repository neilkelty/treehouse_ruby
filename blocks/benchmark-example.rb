class SimpleBenchmarker
	def self.go(how_many=1, &block)
		puts "------------ Benchmarking started ------------"
		start_time = Time.now
		puts "Start Time: \t#{start_time}\n\n"
		how_many.times do |a|
			print "."
			block.call
		end
		print "\n\n"
		end_time = Time.now
		puts "End Time: \t#{end_time}"
		puts "------------ Benchmarking finished ------------\n\n"
		puts "Result:\t\t#{end_time - start_time} seconds"
	end
end

SimpleBenchmarker.go 5 do
	time = rand(0.1..1.0)
	sleep time
end
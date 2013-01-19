module FormatAttributes
	def formats(*attributes)
		@format_attributes = attributes
	end

	def format_attributes
		@format_attributes
	end
end

module Formatter
	def display
		self.class.format_attributes.each do |attribute|
			puts "[#{attribute.to_s.upcase}] #{send(attribute)}"
		end
	end
end

class Resume
	extend FormatAttributes
	include Formatter
	attr_accessor :name, :phone_number, :email, :experience
	formats :name, :phone_number, :email, :experience
end

class CV
	extend FormatAttributes
	include Formatter
	attr_accessor :name, :experience
	formats :name, :experience
end

resume = Resume.new
resume.name = "Neil Kelty"
resume.email = "neil@neilkelty.com"
resume.phone_number = "1 260 760 3988"
resume.experience = "Product Management"

resume.display


puts "----------"

cv = CV.new
cv.name = "Neil Kelty"
cv.experience = "Product Management"
cv.display
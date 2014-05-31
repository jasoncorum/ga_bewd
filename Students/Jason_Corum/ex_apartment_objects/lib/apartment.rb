#Apartment class.
class Apartment

	attr_accessor :name, :apt_sqft, :apt_bedrooms, :apt_bathrooms, :renter, :rent

	def initialize(name, apt_sqft, apt_bedrooms, apt_bathrooms)
		@name = name
		@apt_sqft = apt_sqft
		@apt_bedrooms = apt_bedrooms
		@apt_bathrooms = apt_bathrooms
		@renter = []
		@rent = []
	end

	# def self.view_apartments
 #  		puts "Apartment: #{@name}"
 #  		puts "#Square Feet: #{@apt_sqft} Bedooms: #{@apt_bedrooms} Bathrooms: #{@apt_bathrooms}"
 #  		end
	
	# def self.view_apartments
	# 	puts "#{@name} is #{@rent} dollars a month, and is occupied by #{@renter}."
	# end

end

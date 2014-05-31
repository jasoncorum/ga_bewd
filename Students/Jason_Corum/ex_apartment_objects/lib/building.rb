#Building Class

class Building

	attr_accessor :building_name, :building_address, :apartments, :name, :apt_sqft, :apt_bedrooms, :apt_bathrooms

	def initialize(building_name, building_address)
		@building_name = building_name
		@building_address = building_address
		@apartments = []
		@name = name
		@apt_sqft = apt_sqft
		@apt_bedrooms = apt_bedrooms
		@apt_bathrooms = apt_bathrooms
	end

	# def self.view_apartments
 #  		puts "Apartment: #{@name}"
 #  		puts "#{@apt_sqft} Bedooms: #{@apt_bedrooms} Bathrooms: #{@apt_bathrooms}"
	# end

	# def view_apartments
	# 	Apartment.view_apartments
	# end

end

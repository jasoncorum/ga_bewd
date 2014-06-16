class House
	@@largest = nil
	attr_accessor :name, :color, :year, :sqft

	def initialize(name, color, year, sqft)
		@name = name
		@color = color
		@year = year
		@sqft = sqft
		check_for_largest
	end

	def hello_house
		puts "Hello from #{@name}."
	end
	
	def to_s
		puts "#{@name} is #{@color}, built in #{@year} and is #{@sqft} square feet."
	end

	#Class method
	def self.largest
		@@largest.name
	end

	private

	def check_for_largest
		if @@largest.nil? || @sqft > @@largest.sqft
			@@largest = self
		end
	end

end


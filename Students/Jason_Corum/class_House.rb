class House

	@@largest = nil # Class variable. Used in check_for_largest method

	attr_accessor :name, :color, :year, :sqft # Ruby default requires ':' symbol. This says the class has these variables.

	def initialize(name, color, year, sqft) #Gets called every time a new object in the class is created. Instance variables. This sets the variable.
		@name = name
		@color = color
		@year = year
		@sqft = sqft
		check_for_largest
	end

	#Instance method. Applies to instances of objects within your class.
	def hello_house
		puts 'Hello from #{@name}.'
	end

	#Class method. Applies only to class. In this case 'House.'
	def self.largest
		@@largest.name
	end


	private #Everything below is private until you end it with 'public.' Used as helper methods within the class functionality.

	def check_for_largest
		if @@largest.nil? || @sqft > @@largest.sqft
			@@largest = self
		end
	end

	public


end

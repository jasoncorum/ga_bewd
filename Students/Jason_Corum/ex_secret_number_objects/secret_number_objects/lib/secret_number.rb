class SecretNumber
# this class will generate our secret number for us

	attr_accessor :secret_number

# The initialize method creates an array for the numbers 1 through 10.
	def initialize
		@secret_number = (1..10).to_a
	end

#The method below selects a random number from the @secret_number variable.
	def secret_number_sample
		@secret_number.sample
	end

end
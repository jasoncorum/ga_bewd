class SecretNumber
	attr_accessor :secret_number

	def initialize
		@secret_number = Array.new(10) {rand(1..10)}.at((rand(1..10)))
		#creates an array of 10 random numbers between 1 and 10, then
		#picks randomly from among them
	end

	@secret_number #class returns a secret number. or it's supposed to, at least.
end

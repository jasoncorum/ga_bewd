class SecretNumber
# this class will generate our secret number for us

	attr_accessor :secret_number

	def initialize
		@secret_number = (1..10).to_a
	end

	def secret_number_sample
		@secret_number.sample
	end

end
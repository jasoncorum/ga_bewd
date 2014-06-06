class SecretNumber
	
	attr_accessor :thesecret #different instance variable name to avoid confusion

	def initialize
		@thesecret = Array(1..10).sample
	end
# this class will generate our secret number for us
end

class SecretNumber #creates secret number
# this class will generate our secret number for us
	attr_accessor :number_array, :secret_number

	def initialize
		@number_array = (1..10).to_a
		@secret_number = @number_array[rand(10) + 1]   
	end

end

# s1 = SecretNumber.new
# puts s1
# puts s1.number_array
# puts s1.secret_number



#Person Class.
class Person

	attr_accessor :renter_name, :credit_score, :gender

	def initialize(name, credit_score, gender)
		@renter_name = renter_name
		@credit_score = credit_score
		@gender = gender
	end
end

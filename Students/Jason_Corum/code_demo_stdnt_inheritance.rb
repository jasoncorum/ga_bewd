
#Sharing Behavior and Variables
#TIME: 20 min

# Create an employee class.
class Employee

	attr_accessor :first_name, :last_name, :employee_id

	def initialize(first_name, last_nane, employee_id)
		@first_name = first_name
		@last_name = last_name
		@employee_id = employee_id
	end

	def identify_employee
		"#{@employee_id}: #{@first_name} #{@last_name}"
	end

end

# A manager is contactable by email,
# and wants their title as part of their name display
class Manager < Employee

	attr_accessor :email, :title

	def initialize(email, title, first_name, last_name, employee_id)
		super(first_name, last_name, employee_id)	#super brings in the attr_accessor from Employee
		@email = email
		@title = title
	end

	def identify_employee
		super + " - #{@email} #{@title}"
	end
end

# A marketer can be contacted via twitter
# but is fine with the default name display
class Marketer < Employee


end

jason = Manager.new("jason@jason.corum", "The Man", "Jason", "Corum", 1)

puts jason.first_name == "Jason"
puts jason.identify_employee


# BONUS: Demonstrate how to make this code less error-prone by using named arguments
#        for the initializers

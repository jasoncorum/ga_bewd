# Teddit Contionals - Starter Code.

# Let's add a new Teddit feature. Upvotes!
# Complete the application below. 
# Where you see comments (lines that begin with #) replace it with code so that the program works.

def get_input
  #Get input from the user.
  gets.chomp
end

def calculate_upvotes(story, category)
	upvotes = 1

	# Write code so that:
	# If the Story is about cats multiply the upvotes by 5
	if story.include?("cats")  || story.include?("Cats")
		upvotes = 5 * upvotes
	end

	
	# If the Story is about bacon multiply the upvotes by 8
	if story.include?("bacon") || story.include?("Bacon")
		upvotes = 8 * upvotes 
	end
	
	# If the Story is about Food it gets 3 times the upvotes.
	if story.include?("food") || story.include?("Food")
		upvotes = 3 * upvotes
	end

	#For example:
	# "Cats frolic despite tuna shortage" should give you 5 times the upvotes!
	upvotes 
end



puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
puts "Please enter a News story:"
story = get_input
puts "Please give it a category:"
category = get_input
upvotes = calculate_upvotes(story, category)
puts "New story added! #{story}, Category: #{category.capitalize}, Current Upvotes: #{upvotes}"
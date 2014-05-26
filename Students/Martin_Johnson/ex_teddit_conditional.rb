# Teddit Contionals - Starter Code.

# Let's add a new Teddit feature. Upvotes!
# Complete the application below. 
# Where you see comments (lines that begin with #) replace it with code so that the program works.

def get_input
  #Get input from the user.
  gets.chomp.downcase
end

def calculate_upvotes(story, upvotes)
	# Write code so that:
		# If the Story is about cats multiply the upvotes by 5
		# If the Story is about bacon multiply the upvotes by 8
		# If the Story is about Food it gets 3 times the upvotes.

	if story.include? "cat" #Cats are pretty important, even if there is only one!
#although the word 'catastrophc' also causes this to trigger. Hmm....
		upvotes = upvotes * 5
	end
	if story.include? "bacon" #bacon is all anyone should care about
		upvotes = upvotes * 8
	end
	if story.include? "food" #food is only somewhat of interest
		upvotes = upvotes * 3
	end
upvotes
	#For example:
	# "Cats frolic despite tuna shortage" should give you 5 times the upvotes!
end

upvotes = 1 #to be deleted when we have a database going


puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
puts "Please enter a News story:"
story = get_input
puts "Please give it a category:"
category = get_input
upvotes = calculate_upvotes(story, upvotes) #passes story and upvotes for evaluation
puts "New story added! #{story}, Category: #{category.capitalize}, Current Upvotes: #{upvotes}"


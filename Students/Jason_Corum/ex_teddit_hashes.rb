# Step 1: Working with Arrays and Hashes

# Copy your solution from conditional_teddit.rb. 
# Create an empty stories array. This will be used to hold all stories we capture.
# Users enter the story as they do now, but it gets put in a hash instead. 
# Update any reference to the story (upvotes, category and title) 
# Your story hash should look like the one below: 
# { title: "Monkeys thank mayor for flounder tooth necklace", category: "Teeth", upvotes: 1 }
# Add the hash to an array called stories and print "Story: Monkeys thank mayor for flounder tooth necklace, Category: (Teeth), Current Upvotes: 1"
# Using the stories array 
# Test your cat, bacon, and food upvote conditional logic.
#
# Step 2: Adding Loops 
# Use a loop, so that your program continues to ask a user for stories until they chose to quit. ("Would you like to add another story? Enter 'y' or 'n'")
# Once the user is finished with entering their stories, use .each to print each story in the stories array. 


# Gets input from the user.

def get_input
  gets.strip
end

# The method below calculates the number of "upvotes" a story on Teddit receives. It is set up so that stories about multiple topics get all the "upvotes they deserve. For example the story 'Cats Love Bacon' gets upvotes from both 'Cats' and 'Bacon'. 

def calculate(story)
	# Write code so that:
		# If the Story is about cats multiply the upvotes by 5
		# If the Story is about bacon multiply the upvotes by 8
		# If the Story is about Food it gets 3 times the upvotes.

	story[:upvotes] = 1

	if story[:title].downcase.include?("cats") || story[:category].downcase.include?("cats")
		story[:upvotes] *= 5
	end

	if story[:title].downcase.include?("bacon") || story[:category].downcase.include?("bacon")
		story[:upvotes] *= 8
	end

	if story[:title].downcase.include?("food") || story[:category].downcase.include?("food")
	 	story[:upvotes] *= 3
	end

	#For example:
	# "Cats frolic despite tuna shortage" should give you 5 times the upvotes!
end

# The below method is used to print out an individual story entered by the user.

def show_story(story)
	puts "New story added! #{story[:title]}, Category: #{story[:category]}, Current Upvotes: #{story[:upvotes]}"
end

# The "stories" array stores every story entered by the user.

stories = []

# The section below is a loop that allows the user to enter a story in to Teddit. 

loop do

story = {}

puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
puts "Please enter a News story:"
story[:title] = get_input
puts "Please give it a category:"
story[:category] = get_input
calculate(story)
show_story(story)
stories << story

# The section below allows the user to enter multiple stories restarting the loop or close out the loop.

puts "Would you like to add another story? Enter 'y' or 'n'."
continue = get_input
break if continue == "n"

end

# The section below prints out each story that gets added to the "stories" array.

puts "Here are the stories you entered today:"
stories.each { |s| puts s }


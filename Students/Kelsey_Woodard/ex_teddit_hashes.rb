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

def get_input
  gets.strip
end

def calculate_upvotes(story, category)
	upvotes = 1
	
	if category.include?('cat') || story.include?('cat')
		upvotes *= 5 # If the Story is about cats multiply the upvotes by 5
	end

	if category.include?('bacon') || story.include?('bacon')
		upvotes *= 8 # If the Story is about bacon multiply the upvotes by 8
	end

	if category.include?('food') || story.include?('food')
		upvotes *= 3 # If the Story is about Food it gets 3 times the upvotes.
	end

	upvotes
end

stories = []
def show_all_stories(stories)
	stories.each do |story|
		puts "Story: #{story[:title]}, Category: #{story[:category]}, Current Upvotes: #{story[:upvotes]}"
	end
end

puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
answer = "y"

while answer == "y"
	story = {}
	puts "Please enter a news story: "
	story[:title] = get_input

	puts "Please give it a category: "
	story[:category] = get_input
	
	story[:upvotes] = calculate_upvotes(story[:title], story[:category])

	puts "New story added! #{story[:title]}, Category: #{story[:category]}, Current Upvotes: #{story[:upvotes]}"

	stories << story # Inserts the story into the story array

	puts "Would you like to add another story? Enter 'y' or 'n'"
	answer = get_input.strip.downcase

	# if answer != 'y' || answer != 'n'
	# 	puts "Please enter a valid answer ('y' or 'n')."
	# 	answer = get_input.strip.downcase
	# end
end

show_all_stories stories # Call method and pass in array

# Storing all the stories in an array instead of hash because it doesn't matter; when we're going through each one of the stories,
# we don't know what to reference that story by; no need for that key - there's not consident key that references each of
# those stories. 
# Using a hash because we have consistent keys

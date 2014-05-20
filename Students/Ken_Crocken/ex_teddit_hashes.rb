# Step 1: Working with Arrays and Hashes

# Copy your solution from conditional_teddit.rb.

def get_input
  gets.chomp
end

def calculate_upvotes(story, category)

    story = story.downcase
    category = category.downcase
    upvotes = 1

    if story.include? "cat"
      upvotes *= 5
    elsif category.include? "cat"
      upvotes *= 5
    elsif story.include? "bacon"
      upvotes *= 8
    elsif category.include? "bacon"
      upvotes *= 8
    elsif story.include? "food"
      upvotes *= 3
    elsif category.include? "food"
      upvotes *= 3
    else
      upvotes
    end
end

puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"

stories = [] # Create an empty stories array. This will be used to hold all stories we capture.

count = 1 # counter for conditional loop
x = 0 # counter for array puts
# --- Beginning conditional loop
while count > 0 do 
  puts # create an extra line for readability
  # --- Gather user input
  puts "Please enter a News story:"
  story = get_input
  puts "Please give it a category:"
  category = get_input
  upvotes = calculate_upvotes(story, category)

# Users enter the story as they do now, but it gets put in a hash instead.
  stories_hash = { :title => story, :category => category, :upvotes => upvotes }

# Update any reference to the story (upvotes, category and title) 
# Your story hash should look like the one below: 
# { title: "Monkeys thank mayor for flounder tooth necklace", category: "Teeth", upvotes: 1 }
# Add the hash to an array called stories and print "Story: Monkeys thank mayor for flounder tooth necklace, Category: (Teeth), Current Upvotes: 1"
# Using the stories array 
# Test your cat, bacon, and food upvote conditional logic.
  stories << stories_hash
  puts "Story: #{stories[x][:title]}, Category: (#{stories[x][:category]}), Current Upvotes: #{stories[x][:upvotes]}" 

# Step 2: Adding Loops 
# Use a loop, so that your program continues to ask a user for stories until they chose to quit. ("Would you like to add another story? Enter 'y' or 'n'")
# Once the user is finished with entering their stories, use .each to print each story in the stories array. 
puts "Would you like to add another story? Enter 'y' or 'n'"
another_story = get_input

  if another_story == 'y'
    x += 1 # advance the array counter, do not change loop counter
  elsif another_story == 'n'
    stories.each do |exit_stories|
      puts "Story: #{exit_stories[:title]}, Category: (#{exit_stories[:category]}), Current Upvotes: #{exit_stories[:upvotes]}" 
    end
    count -= 1 # substract from loop counter to end loop
  else
    puts "I am sorry, I don't understand."
  end
end
puts "Come again real soon!"





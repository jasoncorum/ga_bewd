# We're going to add a remote data source to pull in stories from Mashable, Digg, and reddit.
  # http://mashable.com/stories.json
  # http://digg.com/api/news/popular.json
  # http://www.reddit.com/.json
# These stories will also be upvoted based on our rules. No more user input!

# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to an array and display your "Front page"



##⇢Original Code to Abstract⇢##
puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
puts "\u00a0" 
#puts "Please enter a News story:"
#story = get_input
#puts "Please give it a category:"
#category = get_input
#upvotes = calculate_upvotes(story, category)
#puts "New story added! #{story}, Category: #{category.capitalize}, Current Upvotes: #{upvotes}"

def calculate_upvotes(category)
	upvote_base = 1
	if category == "Food"
		puts "You have this many upvotes ⇢ #{upvote_base + 1}." 
	elsif category == "Gaming"
		puts "You have this many upvotes ⇢ #{upvote_base + 8}."
		puts "---"
	elsif category == "Curious"
		puts "You have this many upvotes ⇢ #{upvote_base + 3}."
		puts "---"
	elsif category == "Technology"
		puts "You have this many upvotes ⇢ #{upvote_base + 5}."
		puts "---"
	elsif category == "Human Nature"
		puts "You have this many upvotes ⇢ #{upvote_base + 1}."
		puts "---"
	elsif category == "Internet"
		puts "You have this many upvotes ⇢ #{upvote_base + 20}."
		puts "---"
	elsif category == "Movies"
		puts "You have this many upvotes ⇢ #{upvote_base + 7}."
		puts "---"
	elsif category == "Crime"
		puts "You have this many upvotes ⇢ #{upvote_base - 10}."
		puts "---"
	elsif category == "Histories"
		puts "You have this many upvotes ⇢ #{upvote_base + 2}."
		puts "---"
	elsif category == "Science"
		puts "You have this many upvotes ⇢ #{upvote_base + 5}."
		puts "---"	
	else category != "Science"or"Gaming"or"Curious"or"Technology"or"Human Nature"or"Internet"or"Movies"or"Crime"or"Histories"or"Food"
		puts "\nThis Story is not in one of the prefered Categories, you will be getting Zero upvotes."
		puts "---"
		upvote_base - 1

	end

end


##/////////////////Code to get stories and category/////////////////

##⇢New Code⇢##
#puts "data:\n\n"

require 'json'
require 'rest_client'


def get_digg_story_data
response = JSON.parse(RestClient.get 'http://digg.com/api/news/popular.json')
response['data']['feed'].each do |story|
upvotes = story['content']['tags'][0]['display']
category = story['content']['tags'][0]['display']
puts story['content']['title'], story['content']['tags'][0]['display'] && upvotes && category

category = calculate_upvotes(category)
puts "\u00a0" 
end
end


get_digg_story_data
##///////////////////////////////////////////////



# def get_input
# gets.chomp.capitalize
# end




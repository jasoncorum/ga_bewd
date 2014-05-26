# We're going to add a remote data source to pull in stories from Mashable, Digg, and reddit.
  # http://mashable.com/stories.json
  # http://digg.com/api/news/popular.json
  # http://www.reddit.com/.json
# These stories will also be upvoted based on our rules. No more user input!

# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to an array and display your "Front page"

require 'rest_client'
require 'json'

stories = []

###########################################################################

# The code below is for accessing http://mashable.com/stories.json

response = JSON.parse(RestClient.get 'http://mashable.com/stories.json')

response['new'].each do |story|
	hash = {}

	hash[:title] = story['title']
	hash[:categories] = story['channel']

	hash[:upvotes] = story['shares']['total']

	hash[:categories].include?("cats".capitalize) ? hash[:upvotes] *= 5
	: hash[:categories].include?("bacon".capitalize) ? hash[:upvotes] *= 8
	: hash[:categories].include?("food".capitalize) ? hash[:upvotes] *= 3
	: hash[:upvotes]

	stories<<hash
end

stories.each do |story|
	puts "Story: #{story[:title]}, Category: #{story[:categories]}, Upvotes: #{story[:upvotes]}"
end

###########################################################################

# The commented out code below is for accessing http://www.reddit.com/.json

# response = JSON.parse(RestClient.get 'http://www.reddit.com/.json')

# response['data']['children'].each do |story|
# 	hash = {}

# 	hash[:title] = story['data']['title']
# 	hash[:categories] = story['data']['subreddit']

# 	hash[:upvotes] = story['data']['ups']

# 	hash[:categories].include?("cats") ? hash[:upvotes] *= 5
# 	: hash[:categories].include?("bacon") ? hash[:upvotes] *= 8
# 	: hash[:categories].include?("food") ? hash[:upvotes] *= 3
# 	: hash[:upvotes]

	# The commented out code below would handle instances where where multiple categories would be included (ie. a single story with "cats," "bacon," and "food" as categories.

	# hash[:categories].include?("cats") && hash[:categories].include("bacon") && hash[:categories].include("food") ? hash[:upvotes] *= 120 
	# : hash[:categories].include?("cats") && hash[:categories].include("bacon") ? hash[:upvotes] *= 40
	# : hash[:categories].include?("cats") && hash[:categories].include("food") ? hash[:upvotes] *= 15
	# : hash[:categories].include?("bacon") && hash[:categories].include("food") ? hash[:upvotes] *= 24
	# : hash[:categories].include?("cats") ? hash[:upvotes] *= 5
	# : hash[:categories].include?("bacon") ? hash[:upvotes] *= 8
	# : hash[:categories].include?("food") ? hash[:upvotes] *= 3
	# : hash[:upvotes]

# 	stories<<hash
# end

# stories.each do |story|
# 	puts "Story: #{story[:title]}, Category: #{story[:categories]}, Upvotes: #{story[:upvotes]}"
# end
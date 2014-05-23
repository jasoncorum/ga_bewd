# We're going to add a remote data source to pull in stories from Mashable, Digg, and reddit.
  # http://mashable.com/stories.json
  # http://digg.com/api/news/popular.json
  # http://www.reddit.com/.json
# These stories will also be upvoted based on our rules. No more user input!

# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to an array and display your "Front page"

require 'rest_client'
require 'json'


# The "stories" array stores every story entered by the user.

# def calculate(story)
# 	# Write code so that:
# 		# If the Story is about cats multiply the upvotes by 5
# 		# If the Story is about bacon multiply the upvotes by 8
# 		# If the Story is about Food it gets 3 times the upvotes.

# 	# stories.each do | story_title, story_category |

# 	if hash[:title].downcase.include?("gaming") || hash[:categories].downcase.include?("gaming")
# 		hash[:upvotes] *= 5
# 	end

# 	if hash[:title].downcase.include?("bacon") || hash[:categories].downcase.include?("bacon")
# 		hash[:upvotes] *= 8
# 	end

# 	if hash[:title].downcase.include?("food") || hash[:categories].downcase.include?("food")
# 	 	hash[:upvotes] *= 3
# 	end
# end

stories = []

response = JSON.parse(RestClient.get 'http://www.reddit.com/.json')

response['data']['children'].each do |story|
	hash = {}
	hash[:title] = story['data']['title']
	hash[:categories] = story['data']['subreddit']
	hash[:upvotes] = story['data']['ups']
	stories<<hash
end

stories.each do |story|
	puts "Story: #{story[:title]}, Category: #{story[:categories]}, Upvotes: #{story[:upvotes]}"
end

# , Upvotes: #{story[:upvotes]}"


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

response = JSON.parse(RestClient.get 'http://www.reddit.com/.json')
response['data']['children'].each do |story|
	hash = {}
	hash[:title] = story['data']['title']
	hash[:category] = story['data']['subreddit']
	hash[:upvotes] = story['data']['ups']

	stories.push hash 
end

count = 0
stories.each do |story|
	count += 1
	if story[:category].include?("cats")
		story[:upvotes] *= 5
	elsif story[:category].include?("science")
		story[:upvotes] *= 8
	elsif story[:category].include?("food")
		story[:upvotes] *= 3
	else
		story[:upvotes] *= 1
	end
			
puts "#{count}. #{story[:title]}, Category: #{story[:category]}, Current Upvotes: #{story[:upvotes]}"
end
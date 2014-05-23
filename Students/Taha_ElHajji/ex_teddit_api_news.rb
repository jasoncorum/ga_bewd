# We're going to add a remote data source to pull in stories from Mashable, Digg, and reddit.
  # http://mashable.com/stories.json
  # http://digg.com/api/news/popular.json
  # http://www.reddit.com/.json
# These stories will also be upvoted based on our rules. No more user input!

# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to an array and display your "Front page"

#Methods

def calculate_upvotes(story, category) #what's the point of passing story into this method?
	upvotes = 1
	if category.include?("cat") #used include because == would be too limiting
		upvotes = upvotes*5
	elsif category.include?("bacon")
		upvotes = upvotes*8
	elsif category.include?("food")
		upvotes = upvotes*3
	else
		upvotes
	end
		
	# Write code so that:
		# If the Story is about cats multiply the upvotes by 5
		# If the Story is about bacon multiply the upvotes by 8
		# If the Story is about Food it gets 3 times the upvotes.

	#For example:
	# "Cats frolic despite tuna shortage" should give you 5 times the upvotes!
end


require 'rest-client'
require 'json'

mashable = JSON.parse(RestClient.get 'http://mashable.com/stories.json')
digg = JSON.parse(RestClient.get 'http://digg.com/api/news/popular.json')
reddit = JSON.parse(RestClient.get 'http://www.reddit.com/.json')

stylized_stories = []

mashable['new'].each do |story|
	stylized_stories.push({title: story['title'], category: story['channel']})
end

digg['data']['feed'].each do |story|
	stylized_stories.push({title: story['content']['title'], category: story['content']['tags'][0]['display']})
end

reddit['data']['children'].each do |story|
	stylized_stories.push({title: story['data']['title'], category: story['data']['subreddit']})
end

stylized_stories.each do |story|
	puts " "
	puts "=============================== Story ================================="
	puts story[:title]
	puts "------------"
	puts "Category: #{story[:category]}"
	puts "------------"
	puts calculate_upvotes(story[:title], story[:category])
end







# We're going to add a remote data source to pull in stories from Mashable, Digg, and reddit.
  # http://mashable.com/stories.json
  # http://digg.com/api/news/popular.json
  # http://www.reddit.com/.json
# These stories will also be upvoted based on our rules. No more user input!

# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to an array and display your "Front page"

# JSON

require 'json'
require 'rest_client'

digg = JSON.parse(RestClient.get 'http://digg.com/api/news/popular.json')

mashable = JSON.parse(RestClient.get 'http://mashable.com/stories.json')

reddit = JSON.parse(RestClient.get 'http://www.reddit.com/.json')

# teddit conditional

def get_input
	gets.strip
end

def calculate_upvotes(title, category)

	upvotes = 1

		if title.downcase.include? 'buy'
			upvotes *= 5

		elsif title.downcase.include? 'rent'
			upvotes *= 8
		end

		if category.downcase.include? "economics"
			upvotes *= 3
		end

	p upvotes

end


def get_digg_stories
	digg = JSON.parse(RestClient.get 'http://digg.com/api/news/popular.json')
	digg['data']['feed'].each do |story|
		title = story['content']['title']
		puts "TITLE: #{title}"
		category = story['content']['tags'][0]['display']
		puts "TAG: #{category}"	
		calculate_upvotes(title,category)
		puts "================================================================="
	end
end

def get_mashable_stories
	mashable = JSON.parse(RestClient.get 'http://mashable.com/stories.json')
	mashable ['new'].each do |story|
		title = story['title']
		puts "TITLE: #{title}"
		category = story['channel']
		puts "TAG: #{category}"	
		calculate_upvotes(title,category)
		puts "================================================================="
	end
end

def get_reddit_stories
	reddit = JSON.parse(RestClient.get 'http://www.reddit.com/.json')
	reddit ['data']['children'].each do |story|
		title = story['data']['title']
		puts "TITLE: #{title}"
		category = story['data']['subreddit']
		puts "TAG: #{category}"		
		calculate_upvotes(title,category)
		puts "================================================================="
	end
end
puts "======================== MY FRONT PAGE: ============================"
puts "======================== DIGG STORIES: ============================"
get_digg_stories
puts " "

puts "======================== MASHABLE STORIES: ========================"
get_mashable_stories
puts " "

puts "======================== REDDIT STORIES: ========================"
get_reddit_stories

# teddit conditional base =============================================

# def get_input
# 	gets.strip
# end

# def calculate_upvotes(story, category)

# 	upvotes=1

# 	if story.downcase.include? 'cat'
# 		upvotes * 5

# 	elsif story.downcase.include? 'bacon'
# 		upvotes * 8
# 	end

# 	if category.downcase.include? "food"
# 		upvotes * 3
# 	end

# 	upvotes

# end

# puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
# puts "Please enter a News story:"
# story = get_input
# puts "Please give it a category:"
# category = get_input
# upvotes = calculate_upvotes(story, category)
# puts "New story added! #{story}, Category: #{category.capitalize}, Current Upvotes: #{upvotes}"


# puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"

# puts "Digg news:"
# digg ['data']['feed'].each do |story|
# 	puts story['content']['title']
# 	break
# end

# puts "Reddit news:"
# reddit ['data']['children'].each do |story|
# 	puts story['data']['title']
# 	break
# end

# puts "Mashable news:"
# mashable ['new'].each do |story|
# 	puts story['title']
# 	break
# end


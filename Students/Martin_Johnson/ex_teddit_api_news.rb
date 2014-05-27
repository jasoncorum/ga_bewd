# We're going to add a remote data source to pull in stories from Mashable, Digg, and reddit.
  # http://mashable.com/stories.json
  # http://digg.com/api/news/popular.json
  # http://www.reddit.com/.json
# These stories will also be upvoted based on our rules. No more user input!

# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to an array and display your "Front page"





require 'json'
require 'rest_client'

#class Story
#  attr_accessor :title, :category, :upvotes, :stories
#end
#
# initialize???
#
# can then remove empty variables from methods?
#
# what type of class or local variables do I use?
#

def get_input_digg(stories) #get stories from Digg
  response = JSON.parse(RestClient.get 'http://digg.com/api/news/popular.json')
  response['data']['feed'].each do |story|
    story[:title] = story['content']['title_alt']
    story[:category] = story['content']['tags'][0]['display']
    story[:upvotes] = calculate_upvotes(story[:title], story[:category])
    stories << { s_title: story[:title], s_story: story[:category], s_upvotes: story[:upvotes]}
  end
  stories  
end

def get_input_mashable(stories) #get stories from Mashable
	response = JSON.parse(RestClient.get 'http://mashable.com/stories.json')
  response['new'].each do |story|
    story[:title] = story['title']
    story[:category] = story['channel']
    story[:upvotes] = calculate_upvotes(story[:title], story[:category])
    stories << { s_title: story[:title], s_story: story[:category], s_upvotes: story[:upvotes]}
  end
  stories  
end


def get_input_reddit(stories) #get stories from Reddit
	response = JSON.parse(RestClient.get 'http://www.reddit.com/.json')
  response['data']['children'].each do |story|
    story[:title] = story['data']['title']
    story[:category] = story['data']['subreddit']
    story[:upvotes] = calculate_upvotes(story[:title], story[:category])
    stories << { s_title: story[:title], s_story: story[:category], s_upvotes: story[:upvotes]}
  end
  stories  
end


def calculate_upvotes(story, category) #calculate upvotes
  upvotes = 1
  if story.downcase.include? "cat" #Cats are pretty important, even if there is only one!
    upvotes = upvotes * 5
  end
  if story.downcase.include? "bacon" #bacon is all anyone should care about
    upvotes = upvotes * 8
  end
  if story.downcase.include? "food" #food is only somewhat of interest
    upvotes = upvotes * 3
  end
  upvotes
end


def show_all_stories(stories) #show all stories
  puts "Front Page:"
  puts
  stories.each do |story|
    puts "Story: #{story[:s_title]}, Category: #{story[:s_story]}, Current upvotes: #{story[:s_upvotes]}"
    puts
  end
end	

stories = []
stories = get_input_digg(stories) + get_input_mashable(stories) + get_input_reddit(stories)
show_all_stories stories

# This is an example that pulls stories & URLs from ReliefWeb, 
# the news service of the UN Office for the Coordination of Humanitarian Affairs. 
# This is actually something I could use at work! 
# The URL it returns is the API version, though (e.g. http://api.rwlabs.org/v1/reports/376930).
# I haven't been able to figure out how to call fields from each individual report (e.g. url),
# though the API documentation says it's possible to with [include] (http://reliefweb.int/help/api/advanced).
# The default setting is limited to searching the last 10 stories, I used offset to pull from the last 1000.

require 'rest_client'
require 'json'

stories = []

response = JSON.parse(RestClient.get 'http://api.rwlabs.org/v1/reports?offset=0&limit=1000')
response['data'].each do |story|
	hash = {}
	hash[:title] = story['fields']['title']
	hash[:href] = story['href']
	stories.push hash 
end

count = 0
stories.each do |story|
	count += 1
	if story[:title].include?("Liberia") || story[:title].include?("Congo") || story[:title].include?("Haiti")
		puts "#{count}. #{story[:title]}"
		puts "URL: #{story[:href]}"
	else
	end
end
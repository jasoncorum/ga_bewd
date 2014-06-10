require 'rest_client'
require 'json'
require 'yaml'
require 'wmata_api'

arr_trains = []

###########################################################################

# The code below is for accessing http://mashable.com/stories.json

response = JSON.parse(RestClient.get wmata_access_url)

response['Trains'].each do |train|
	hash = {}

	hash[:line] = train['Line']
	hash[:destination] = train['DestinationName']
	hash[:station] = train['LocationName']
	hash[:minutes] = train['Min']

	arr_trains<<hash
end

arr_trains.each do |train|
	puts "Station: #{train[:station]}, Train Line: #{train[:line]}, Destination: #{train[:destination]}, Minutes: #{train[:minutes]}"
end
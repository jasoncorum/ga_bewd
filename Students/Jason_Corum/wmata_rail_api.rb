require 'rest_client'
require 'json'

arr_trains = []

###########################################################################

# The code below is for accessing http://mashable.com/stories.json

response = JSON.parse(RestClient.get 'http://api.wmata.com/StationPrediction.svc/json/GetPrediction/All?api_key=ejv5bjtebefepg8qf55d2zt3')

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
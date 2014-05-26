require 'rest_client'
require 'json'

all_stations = []
no_bikes = []
###########################################################################

# The code below is for accessing http://www.citibikenyc.com/stations/json

response = JSON.parse(RestClient.get 'http://www.citibikenyc.com/stations/json')

response['stationBeanList'].each do |nyc|
	stations = {}

	stations['station'] = nyc['stationName']
	stations['bikes'] = nyc['availableBikes']

	all_stations<<stations

end

puts all_stations

no_bikes<<all_stations.select {|station| station['bikes'] == 0}

puts no_bikes

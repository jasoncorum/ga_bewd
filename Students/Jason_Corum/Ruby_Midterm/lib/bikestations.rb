class BikeStations
# This class parses and displays the SF bike station data.

	attr_accessor :all_stations, :sf_stations, :rw_stations, :sj_stations, :pa_stations, :data, :select_city, :choose_station

	def initialize(select_city)
		@all_stations = []
		@sf_stations = []
		@rc_stations = []
		@sj_stations = []
		@pa_stations = []
		@select_city = select_city
		@choose_station = choose_station
		@data = JSON.parse(RestClient.get 'http://www.bayareabikeshare.com/stations/json')
	end

	def get_all_stations
		@data['stationBeanList'].each do |sf|
		station_info = {}
		station_info[:station] = sf['stationName']
		station_info[:bikes] = sf['availableBikes']
		station_info[:city] = sf['city']
		@all_stations<<station_info
		end
	end

	def get_sf_stations
		@data['stationBeanList'].each do |sf|
		sf_station_info = {}
		if sf['city'].downcase == "san francisco"
		sf_station_info[:station] = sf['stationName']
		sf_station_info[:bikes] = sf['availableBikes']
		sf_station_info[:city] = sf['city']
		@sf_stations<<sf_station_info
		end
		end
	end

	def get_sj_stations
		@data['stationBeanList'].each do |sf|
		sj_station_info = {}
		if sf['city'].downcase == "san jose"
		sj_station_info[:station] = sf['stationName']
		sj_station_info[:bikes] = sf['availableBikes']
		sj_station_info[:city] = sf['city']
		@sj_stations<<sj_station_info
		end
		end
	end

	def get_rc_stations
		@data['stationBeanList'].each do |sf|
		rc_station_info = {}
		if sf['city'].downcase == "redwood city"
		rc_station_info[:station] = sf['stationName']
		rc_station_info[:bikes] = sf['availableBikes']
		rc_station_info[:city] = sf['city']
		@rc_stations<<rc_station_info
		end
		end
	end

	def get_pa_stations
		@data['stationBeanList'].each do |sf|
		pa_station_info = {}
		if sf['city'].downcase == "palo alto"
		pa_station_info[:station] = sf['stationName']
		pa_station_info[:bikes] = sf['availableBikes']
		pa_station_info[:city] = sf['city']
		@pa_stations<<pa_station_info
		end
		end
	end

	def show_stations
		if @select_city == "sf"
			@sf_stations.each do |x|
			puts "Station: #{x[:station]}"
			end
		end

		if @select_city == "sj"
			@sj_stations.each do |x|
			puts "Station: #{x[:station]}"
			end
		end

		if @select_city == "rc"
			@rc_stations.each do |x|
			puts "Station: #{x[:station]}"
			end
		end

		if @select_city == "pa"
			@pa_stations.each do |x|
			puts "Station: #{x[:station]}"
			end
		end
	end

end
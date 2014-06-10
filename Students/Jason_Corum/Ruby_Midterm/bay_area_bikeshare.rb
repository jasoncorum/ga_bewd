require 'rest_client'
require 'json'
require_relative 'lib/bikestations'
require_relative 'lib/user'

###########################################################################

# The methods below are used for creating instances of my 2 classes.

def create_user
	puts "Hello, welcome to the Bay Area Bikeshare Program! This program can be used to find a station with bikes available in the San Francisco area."
	puts "What is your name?"
	user = gets.strip

	BikeUser.new(user)
end

def create_bikestation
	puts "Enter 'SF' for San Francisco, 'SJ' for San Jose, 'PA' for Palo Alto or 'RC' for Redwood City."
	
	select_city = gets.strip.downcase
	
	if select_city == "sf" || select_city == "sj" || select_city == "pa" || select_city == "rc"
	puts "Thank you for entering your city."

	else
	puts "You did not enter a valid city code."

	until select_city == "sf" || select_city == "sj" || select_city == "pa" || select_city == "rc"
	puts "Enter 'SF' for San Francisco, 'SJ' for San Jose, 'PA' for Palo Alto or 'RC' for Redwood City."
	select_city = gets.strip.downcase
	end
	end

	BikeStations.new(select_city)
end

# The code below is for running the Bay Area Bikeshare program.

user = create_user

puts "Welcome #{user.user}! I hope we can find you a bike station today!"


puts "Where would you like to get a bike? Are you in San Francisco, San Jose, Palo Alto, or Redwood City?" 

bikestation = create_bikestation

bikestation.get_all_stations
bikestation.get_sf_stations
bikestation.get_sj_stations
bikestation.get_pa_stations
bikestation.get_rc_stations

puts "Which station would you like to use? Please enter a station name exactly as it appears (ie. 'Park at Olive')."

loop do

bikestation.show_stations

bikestation.choose_station = gets.strip.downcase

if x = bikestation.all_stations.find { |x| x[:station].downcase == bikestation.choose_station && x[:bikes].to_i == 0 }
puts "I'm sorry, your station has no bikes available at the moment." 
break

elsif x = bikestation.all_stations.find { |x| x[:station].downcase == bikestation.choose_station }
puts "You station has #{x[:bikes]} bikes available."
break

else x = bikestation.all_stations.find { |x| x[:station].downcase != bikestation.choose_station }
puts "You did not enter a valid station. Please enter a station name exactly as it appears (ie. 'Park at Olive')."
end
end

puts "Thank you, #{user.user}, for using our Bay Area Bikeshare Program!"
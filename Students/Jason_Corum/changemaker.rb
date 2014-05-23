
def assert(truthy)
  raise "There was an error" if !truthy
end

def show_change
	change.each do
		puts "Quarters: #{coins[:Quarter]}"
	end
end

change = []
coins = {}

# puts "Enter your change"
# change = gets.to_i

# coins[:quarter] = change / 25
# puts "#{coins[:quarter]}"



end

# change << coins

# show_change change

# assert fizzbuzz(1) == 1
# assert fizzbuzz(2) == 2
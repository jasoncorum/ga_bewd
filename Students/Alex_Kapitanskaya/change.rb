
puts "Give me an amount between 1 cent and 100 cents"
coins = gets.chomp

quarters = coins.to_i / 25
remainder_one = coins.to_i - (quarters.to_i * 25)
dimes = remainder_one.to_i / 10
remainder_two = remainder_one.to_i - (dimes.to_i * 10)
nickels = remainder_two.to_i / 5
remainder_three = remainder_two.to_i - (nickels.to_i * 5)

if quarters.to_i == 1
puts "That\'s #{quarters} quarter!"
elsif quarters.to_i > 1
	puts "That\'s #{quarters} quarters!"
elsif quarters.to_i == 0
	puts "No quarters for you. However..."
end

puts "You\'re left with #{remainder_one} cents..."

if dimes.to_i == 1
	puts "Which is #{dimes} dime..."
elsif dimes.to_i > 1
	puts "Which is #{dimes} dimes..."
elsif dimes.to_i == 0
	puts "This means no dimes for you! However..."
end

if nickels.to_i > 0
puts "You still have #{remainder_two} cents left, which is #{nickels} nickel..."
puts "And then you get #{remainder_three} pennies!"
elsif nickels.to_i == 0
	puts "And then you get #{remainder_two} pennies."
end



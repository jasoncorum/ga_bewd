# If you give it a price, it will tell you how many quarters, dimes, nickels, and pennies in a hash

puts "How much change is there?"
change = gets.strip.to_i

while change > 0
	quarters = change / 25
	change = change - (quarters * 25)
	if change % 25 == 0

	dimes = change / 10
	change = change - (dimes * 10)

	nickels = change / 5
	change = change - (nickels * 5)

	pennies = change / 1
	change = change - (pennies * 1)


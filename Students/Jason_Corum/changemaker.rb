puts "Please enter the amount of change needed. If over 1.00 please enter the total amount in cents (ie. $1.05 = 105):"

# def assert(truthy)
#   raise "There was an error" if !truthy
# end

def make_change
change = gets.strip.to_i

coins = {}
money = { quarter: 25, dime: 10, nickel: 5, penny: 1 }

coins[:quarters] = change / money[:quarter]
change = change % money[:quarter]

coins[:dimes] = change / money[:dime]
change = change % money[:dime]

coins[:nickels] = change / money[:nickel]
coins[:pennies] = change % money[:nickel]

puts "Quarters: #{coins[:quarters]}, Dimes: #{coins[:dimes]}, Nickels: #{coins[:nickels]}, Pennies: #{coins[:pennies]}"

end

make_change
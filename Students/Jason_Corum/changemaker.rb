puts "Please enter the amount of change needed. If over 1.00 please enter the total amount in cents (ie. $1.05 = 105):"

# def assert(truthy)
#   raise "There was an error" if !truthy
# end

def make_change
change = gets.strip.to_i

coins = {}

coins[:quarter] = change / 25
change = change % 25

coins[:dime] = change / 10
change = change % 10

coins[:nickel] = change / 5
coins[:penny] = change % 5

puts "Quarters: #{coins[:quarter]}, Dimes: #{coins[:dime]}, Nickels: #{coins[:nickel]}, Pennies: #{coins[:penny]}"

end

make_change
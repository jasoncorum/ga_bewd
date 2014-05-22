# Changemaker Enter amount, report quarters, dimes, nickles, pennies
# puts "How much change do you have? (Total of your quarters, dimes and nickels; e.g., $1.24 = 124)"
# user_change = gets.strip.to_i

def make_change(amount)
  coins = { quarters: 25, dimes: 10, nickels: 5, pennies: 1 }
  #abort "Input doesn't make sense. You will have change leftover." if amount % coins.last != 0
  change = {}
  coins.each do |key,coin|
    x = amount/coin
    amount = amount - (x * coin)
    change[key] = x
  end
  change
  #puts "You have #{amount} cent left over, with no corresponding coin." if amount > 0
end

make_change(1)
make_change(352)
#make_change(174,[17,6,2])
#make_change(175,[17,6,2])

puts make_change(1) == {quarters: 0, dimes: 0, nickels:0, pennies: 1 }
puts make_change(5) == {quarters: 0, dimes: 0, nickels:1, pennies: 0 }
puts make_change(6) == {quarters: 0, dimes: 0, nickels:1, pennies: 1 }
puts make_change(32) == {quarters: 1, dimes: 0, nickels:1, pennies: 2 }
puts make_change(41) == {quarters: 1, dimes: 1, nickels:1, pennies: 1 }
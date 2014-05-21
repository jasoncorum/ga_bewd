# Changemaker Enter amount, report quarters, dimes, nickles, pennies
# puts "How much change do you have? (Total of your quarters, dimes and nickels; e.g., $1.24 = 124)"
# user_change = gets.strip.to_i

def make_change(amount, coins = [25,10,5,1])
  puts "Input doesn't make sense. You have change leftover." if amount % coins.last != 0
  change = {}
  coins.each do |coin|
    x = amount/coin
    amount = amount - (x * coin)
    coin_key = coin.to_s
    change[coin_key] = x
  end
  change.each {|k,v| puts "You have #{v}, #{k} cent coin(s)" if v > 0}
  puts "You have #{amount} cent left over, with no corresponding coin." if amount > 0
end

make_change(41)
make_change(352)
make_change(174,[17,6,2])
make_change(175,[17,6,2])
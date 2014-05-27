counter = 0

1.upto(100) do |num|

counter += 1

	if num % 3 == 0 && num % 5 == 0
		puts "#{counter}. fizzbuzz"
	elsif num % 3 == 0
		puts "#{counter}. fizz"
	elsif num % 5 == 0
		puts "#{counter}. buzz"
	else 
		puts "#{counter}. #{num}"
	end
end

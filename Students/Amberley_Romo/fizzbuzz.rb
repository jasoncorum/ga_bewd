# Loop 1...100
# If the number is divisible by 3, output "fizz"
# If the number is divisible by 5, output "buzz"
# If the number is divisible by both 3 and 5, output "fizzbuzz"
# else puts out the number


1.upto(100) do |num|
	if num % 3 == 0 && num % 5 == 0
		puts "fizzbuzz"
	elsif num % 3 == 0
		puts "fizz"
	elsif num % 5 == 0
		puts "buzz"
	else
		puts num
	end
end



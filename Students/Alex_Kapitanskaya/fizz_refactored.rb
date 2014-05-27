def fizzbuzz(number)
  print number % 5 == 0 ? number % 3 == 0 ? "fizzbuzz" : "buzz" : number % 3 == 0 ? "fizz" : number
end

# To figure out the logic I assigned each condition before the ? a numeral for ease of reference.
# Not sure if this is the right way to be thinking about it, but:
#
# While we're only comparing the first two conditions,
# If both condition 1 is true and condition 2 is true, print fizzbuzz. 
# If only condition 1 is true but condition 2 is false, print buzz.
#
# Then, if condition 1 is false AND if conditions 1 and 2 are false when put together,
#
# We begin comparing condition 3 to the *result* of the comparison between conditions 1 and 2,
# Since I don't think we go back to condition 1 at any point. 
# If condition 3 is true and conditions 1 and 2 put together are false, 
# Then we print fizz, 
# Otherwise, if condition 3 is false and conditions 1 and 2 together are false, we print the number.
#
# Note that I had to use the print method here in order for the code to print
# single lines, probably because of the puts method in the loop below.
# If both methods use puts, there's a spare line between each number in the output. 
 
1.upto(100) do |number|
  puts fizzbuzz(number)
end
 
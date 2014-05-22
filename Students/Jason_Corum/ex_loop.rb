
# num = 99

# loop do
# 	break if num < 2
# 		puts "#{num} bottles of beer on the wall"
# 		puts "#{num} bottles of beer!"
# 		puts "You take one down and pass it around,"
# 		puts "  _  "
# 		puts " | | "
# 		puts "/   \\"
# 		puts "|   |"
# 		puts "|   |"
# 		puts " --- "
# 		num -= 1
# end

# 		puts "#{num} bottle of beer on the wall"
# 		puts "#{num} bottle of beer!"
# 		puts "You take one down and pass it around,"
# 		puts "No more bottles of beer on the wall :-("

def bottle_count(count)
	if count == 1
		"#{count} bottle"
	else
		"#{count} bottles"
	end
end

99.downto(2) do |count|
	puts "#{bottle_count(count)} of beer on the wall"
	puts "#{bottle_count(count)} of beer!"
	puts "You take one down and pass it around,"
	puts "#{bottle_count(count-1)} of beer on the wall!"
end

puts "No more bottles of beer on the wall :-("


# Write a program that prints 99 bottles of beer on the wall.
# The song starts with 
# 99 bottles of beer on the wall
# 99 bottles of beer!
# You take one down and pass it around,
# 98 bottles of beer on the wall!
#
# And ends with 
# 1 bottle of beer on the wall
# 1 bottle of beer!
# You take one down and pass it around,
# No more bottles of beer on the wall :-(
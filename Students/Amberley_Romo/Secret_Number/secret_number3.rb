###############################################################################
#
# Back-End Web Development - Homework #1
#
# Secret Number is a game you will build in two parts.
# The purpose of the game is to have players guess a secret number from 1-10.
#
# Read the instructions below.
# This exercise will test your knowledge of Variables and Conditionals.
#
###############################################################################
#
# We're ready to program! To practice our Ruby skills lets create a secret number game. 
# In this game players have three tries to guess a secret number between 1 and 10. 
#
# Here are some guidelines to building your game:
#

#	Intros
# 	-	Welcome the player to your game. Let them know who created the game. 

def get_guess
	gets.strip.to_i
end

# looped actions:
# condition: until the guess is correct, or max attempts have been exhausted, continue guessing

puts "Welcome to the Secret Number game. I made it just for you!"

puts "What is your name?"
name = gets.strip
puts "Hi, #{name}!"

puts "Here's the game. You have three tries to guess a number between 1 and 10."

secret_num = rand(11)
puts "Alright, I've got the number. First guess?"

guess = get_guess
attempt = 1

until guess == secret_num || attempt == 3 do
	if guess < secret_num then puts "Nope. Too small."
	elsif guess > secret_num then puts "Nope. Too big."
	end

	guess = get_guess
	attempt += 1
end

if guess == secret_num
	puts "Congrats! You got it"
elsif attempt == 3 
	puts "Too many tries. Sorry."
	puts "The secret number was #{secret_num}"
end


# if guess == secret_num
# 	puts "Congratulations! You're an overachiever."

# elsif guess != secret_num
	
# 	if guess < secret_num then puts "Nope. Too small."
# 	elsif guess > secret_num then puts "Nope. Too big."
# 	end

# 	puts "What's your second guess?"
# 	guess = get_input.to_i

# 		if guess == secret_num
# 			puts "Congratulations! You're not an overachiever, but you don't suck."

# 		elsif guess != secret_num
			
# 			if guess < secret_num then puts "Nope. Too small."
# 			elsif guess > secret_num then puts "Nope. Too big."
# 			end

# 			puts "What's your third guess?"
# 			guess = get_input.to_i


# 			if guess == secret_num
# 				 puts "Congratulations! You finally got it."
# 				 puts "The secret number was #{secret_num}!"

# 			elsif guess != secret_num
				
# 				if guess < secret_num then puts "Nope. Too small."
# 				elsif guess > secret_num then puts "Nope. Too big."
# 				end
# 				puts "The secret number was #{secret_num}"

# 			end
# 		end
# end



#	  -	Ask for the player's name then personally greet them by printing to the screen, "Hi player_name!"
#	  -	Any good game will communicate the rules. Let the player know they must guess a number between 1 and 10 
#		and that they only have 3 tries to do so.
#
#	Functionality: 
#	 -	Hard code the secret number. Make it a random number between 1 and 10.
#	 - 	Ask the user for their guess.
#	 -	Verify if they were correct. If the player guesses correctly they win the game they should be congratulated and the game should end.
#	 -	If they guess incorrectly, give the player some direction. If they guess too high let them know, if they guess too low, let them know.
#	 - 	Don't forget to let your players know how many guesses they have left. Your game should say something like
#		  "You have X many guesses before the game is over enter a another number"
#	 -	If they don't guess correctly after 3 tries, print that the Player lost and the game is over. Also let them know what the `secret_number` was.
#
# Make sure to add helpful comments to your code to document what each section does.
# 
# Remember to cast input from the Player into the appropriate data type.
#
###############################################################################


# number = rand(100) + 1
# puts "I'm thinking of a number between 1 and 100, try and guess what it is"
# guess = gets.to_i
# attempts = 1
# until guess == number do
#   if guess < number then puts "Too small, try again"
#   elsif guess > number then puts "Too big, try again"
#   end
#   guess = gets.to_i
#   attempts += 1
# end
# puts "Well done, you guessed my number in #{attempts} attempt#{'s' if attempts > 1}


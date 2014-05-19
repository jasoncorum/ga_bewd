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

# The variable below defines the secret number.

secret_number = 8.to_s

# The method below is used to address the grammar in the game so that we have "3 guesses" but "one guess".

def num_count(num)
	if num == 1
		"#{num} guess"
	else
		"#{num} guesses"
	end
end

# These lines below are the introduction to the game.

puts "Welcome to the Secret Number Game! I am your host, Macbook."

puts "This game was created by my owner, Jason."

puts "What is your name?"

player = gets.chomp

puts "Hi #{player}!"

puts "In the Secret Number Game, you guess a number between 1 and 10 and, if you pick the right number, you win!"

# The game loop is below. It gives the player 3 guesses to guess the secret number and provides different responses for when the guess is higher or lower than the secret number. It also provides a unique response if the user guesses the secret number. 

3.downto(1) do |num|
	
	puts "You have #{num_count(num)} before the game is over."
	puts "What is your guess, #{player}?"
	guess = gets.chomp

	if guess < secret_number
		puts "I'm sorry, that number is incorrect."
		puts "#{guess} is smaller than the secret number."
		if num == 1
			puts "I'm sorry. You lost the Secret Number Game. Bye."	
		end
	elsif guess > secret_number
		puts "I'm sorry, that number is incorrect."
		puts "#{guess} is higher than the secret number."
		if num == 1
		puts "You're out of guesses, so you lost the Secret Number Game. Bye."	
		end	
	else
		puts "Congratulations! You won the Secret Number Game!"
		break if guess == secret_number
	end
end
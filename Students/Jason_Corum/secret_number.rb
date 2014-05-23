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
def assert(truth)
  raise "ERROR" if !truth
end

def num_count(num)
	if num == 1
		"#{num} guess"
	else
		"#{num} guesses"
	end
end

# The lines below are the introduction to the game.

puts "Welcome to the Secret Number Game! I am your host, Macbook."
puts "This game was created by my owner, Jason."
puts "What is your name?"
player = gets.strip
puts "Hi #{player}!"
puts "In the Secret Number Game, you guess a number between 1 and 10 and, if you pick the right number, you win!"

# The game loop is below. It gives the player 3 guesses to guess the secret number and provides different responses for when the guess is higher or lower than the secret number. It also provides a unique response if the user guesses the secret number. 

3.downto(1) do |num|
    puts "You have #{num_count(num)} before the game is over."
    puts "What is your guess?"
    number = gets.strip.to_i
    puts 'Your number is lower than the secret number' if number < 3
    puts 'You guessed the secret number! You win' if number == 3
    puts 'Your number is higher than the secret number.' if number > 3  
    break if number == 3
    puts "You're out of guesses, so you lost the Secret Number Game. Bye." if num == 1
end

# assert secret_number(1)
# assert secret_number(2)
# assert secret_number(3)
# assert secret_number(4)
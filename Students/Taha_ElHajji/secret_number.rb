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

# Welcoming and introducing the player to the game
puts "This version of the Secret Number game was created by Taha El Hajji"
puts "To start please enter your name"

player_name=gets.chomp

puts "Hi #{player_name}, welcome to Secret Number."
puts "The rules of the game are simple: find the secret number in three guesses or less (hint: it's between 1 and 10)"
puts "Let's start!"

#Prompts the player to play again, until they decide to stop by answering "no"
player_answer = ""

until player_answer == "no"
	#Assigns a secret number randomly so that even reading through the code does not help ;)
	secret_number = rand(1..10)

	#Allows the player 3 guesses
	3.times do |guesses|

		#Indicates which guess it is in letters
		if guesses == 0
			guesses_in_letters = "First"
		elsif guesses == 1
			guesses_in_letters = "Second"
		else
			guesses_in_letters = "Last"
		end

		#Informs player of how many guesses they have left and prompts for next answer
		puts "What's your #{guesses_in_letters} of 3 guesses"
		guess=gets.to_i

		#Gives hints if answer is wrong, congratulates if answer is correct, and announces that game is over if player is out of guesses
		if guess == secret_number
			puts "Wow, you just got the secret_number. You would make a great spy! Apply here: https://www.cia.gov/careers/opportunities/clandestine/core-collector.html"
			#if the player answers correctly, the game stops
			break
		#Provides hint if player is not out of guesses
		elsif guess > secret_number && guesses < 2
			puts "Nope, too high, try again!"			
		elsif guesses < 2
			puts "Nope, too low, try again!"
		else
			puts "Oops, game over!"
			puts "The secret number was #{secret_number}"
		end		
	end

	#Allows the player to exit or play again
	puts "Do you want to play again? (Yes/No)"

	#Downcases answer to avoid problems with capitalized letters
	player_answer = gets.chomp.downcase
end
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

 
def start # starts the game
	puts "Welcome to the Secret Number Game,"
	puts "It's the game all the cool kids are playing!!!"
	puts "What is your name?"
	player_name = gets.chomp # solicits player name
	puts
	puts "Hi #{player_name}!"
	puts
	puts "You must guess a number between 1 and 10,"
	puts "and you only get 3 tries to do so."
	puts "Good Luck!!!"
	puts
end

def guess number
	guesses = 1
	while guesses <= 3
		puts "Please guess a number:"
		answer = gets.chomp.to_i # solcits guess
		if answer == number # if answer is correct
		  	puts 
		  	puts "Congratulations, you are Correct!!!"
		  	guesses = 10
		else
			if answer < number #tests if is low wrong answer
			puts "Your guess is too low"
			else # if wrong high number
			puts "Your guess is too high"
			end
		guesses += 1
		puts "You have #{4 - guesses} left before the game is over. Please enter a another number"
		end
	end
	if guesses != 10 #message if lost
		puts
		puts "You have lost and the game is over."
		puts "The secret number was #{number}."
	end
end	

secret_number = 7 #hard codes secret number
start
guess secret_number


puts
puts "Please tell all of your cool friends to play the Secret Number Game!!! :-)" # Mastermind marketing ploy
puts
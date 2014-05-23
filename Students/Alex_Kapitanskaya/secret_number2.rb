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

# hard coded number and hard coded tries
number = 7
tries = 1

# welcome message

puts "Welcome to the Secret Number game! This game was created by Alex K. What is your name?"
player_name = gets.chomp

# first guess

puts "Hi #{player_name}! You will need to guess a number between 1 and 10. You will have three tries. What's your first guess?"
guess = gets.chomp.to_i 

# here I added the .to_i method as well, hoping I could remove it from the if/else conditionals for the guess variable, but I kept getting a comparison error if I tried to remove it below. Not sure why.  

if guess.to_i == number.to_i
	puts "Congratulations! You won."
end

# added a while loop

while guess.to_i != number.to_i && tries < 3 # added the && operator for both conditions to be met
	tries += 1 # added a counter for the tries within the while loop

# added conditions for invalid guesses (0, greater than 10); had to get creative with the grammar because I couldn't figure out how to set conditions within conditions for plural ("guesses") vs. singular ("guess") dependent upon #{tries}

if guess.to_i == 0
	puts "Invalid guess. Try again. This is your #{tries} of 3 guesses." 
	guess = gets.chomp
elsif guess.to_i > 10
	puts "Invalid guess. Try again. This is your #{tries} of 3 guesses."
	guess = gets.chomp
elsif guess.to_i > number.to_i 
	puts "You guessed too high. Try again. This is your #{tries} of 3 guesses."
	guess = gets.chomp
elsif guess.to_i < number.to_i 
	puts "You guessed too low. Try again. This is your #{tries} of 3 guesses."
	guess = gets.chomp
end

if tries == 3 && guess.to_i != number.to_i # added the && operator for the final set of conditions
	puts "You lost. The secret number was #{number}."
elsif guess.to_i == number.to_i
	puts "Congratulations! You won."
end
end








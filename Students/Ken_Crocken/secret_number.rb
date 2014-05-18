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

# --- Game intro, title and creator
puts "Welcome to the Secret Number! by Ken Crocken"
# --- Get the players name and tell them the rules
puts "What's your name?"
name = gets.chomp
puts "Hi #{name}!  Let's go over the rules before we play."
puts "There is a secret number between 1 and 10."
puts "Your goal is to guess the secret number within 3 guesses."
puts "Simple, right?  Awesome! lets' play ... "

# --- Set the variables, hard code the secret number and set the number of guesses
# --- secret_number = 1 + rand(10) # --- generate a random number
secret_number = 5 # Secret number is hard coded.
guesses = 3

# --- Start the game, initiate the loop.  Once the player uses up 3 guesses
# --- they lose and the game ends. 
while guesses > 0 do

# --- Display how many guesses are left and request the player to enter their guess.
  puts "Guesses left: #{guesses}"
  puts "What is your guess?"

# --- Store the player's guess, convert player's number to an integer
# --- and compare the player's guess to the secret number.
  player_guess = gets.to_i
    if player_guess == secret_number  # Player correctly guesses the secret number and wins!
        puts "You win!  You guessed #{player_guess} and the Secret Number was #{secret_number}.  Well done!"
        break
    elsif player_guess < secret_number && guesses > 1 # Player's guess is less than secret number, with hint
        puts "You guessed #{player_guess}.  Guess higher!"
        guesses -= 1
    elsif player_guess > secret_number && guesses > 1 # Player's guess is greater than secret numeber, with hint
        puts "You guessed #{player_guess}.  Guess lower!"
        guesses -= 1
    else # Player has run out of guessess and the game ends.
        puts "Sorry, you are out of guesses.  The Secret Number was #{secret_number}."
        guesses -= 1
    end
end

# --- Thank the player for playing.
puts "Thanks for playing!"


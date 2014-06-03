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

# To figure out:
# If second guess is the right number, it says "Congrats..." correctly but then adds nil nil
# Find out how to call secret_number variable into methods' arguments



# STEP 4(b) - checking validity
def valid_guess(guess) 
	while guess < 1 || guess > 10 
		puts "Oops! Invalid number. Please guess a number between 1 and 10. What's your guess?"
		guess = gets.to_i
	end
	ok_guess = guess
end

# STEP 5(b) - see if guess is correct & gives hint
def if_correct(ok_guess, number_guesses, secret_number) 
	number_guesses = number_guesses - 1	# STEP 6 - Subtracts one of the player's guesses
		if ok_guess == secret_number
			puts "Congratulations! You got it right! You win!!!"
		elsif ok_guess < secret_number 
			puts "Good try, but guess a little higher."
			puts guesses_left(number_guesses) # STEP 7 - Tells the player how many guesses s/he has left
		else ok_guess > secret_number
			puts "Good try, but guess a little lower."
			puts guesses_left(number_guesses) # STEP 7 - Tells the player how many guesses s/he has left
		end
end

# STEP 7 - Tells the player how many guesses s/he has left & gets next guess
def guesses_left(number_guesses)
	if number_guesses == 0
		puts "Sorry, you're out of guesses. Game over!"
	elsif number_guesses == 1
		puts "You have 1 more guess left. No pressure."
		puts "What's your last guess?"
		guess = gets.to_i
		ok_guess = valid_guess(guess)
		secret_number = 7
		puts game_over(ok_guess, secret_number)
	elsif number_guesses == 2
		puts "You have 2 more guesses left."
		puts "What is your second guess?"
		guess = gets.to_i
		ok_guess = valid_guess(guess)
		secret_number = 7 # I shouldn't have to add in secret_number. (Instance variable? Hash as argument?)
		puts if_correct(ok_guess, number_guesses, secret_number) # Goes back to STEP 5(b) to see if correct
	end
end

def game_over(ok_guess, secret_number)
	if ok_guess == secret_number
		puts "Congratulations! You got it right! You win!!!"
	elsif ok_guess != secret_number
		puts "Game over! Better luck next time."
	end
end


# STEP 1 - welcome player & get name
secret_number = 7 
puts "Welcome to the Secret Number Game! This game was created by Kelsey Woodard."
puts "What's your name?"
player_name = gets.chomp.upcase

# STEP 2 - go over rules
puts "Hi #{player_name}!"
puts "Let's quickly go over the rules. You must guess a number between 1 and 10. \nYou'll have 3 tries to try and guess the correct number. Simple enough, right? \nOk, let's give it a go."

# STEP 3 - get first guess
number_guesses = 3
puts "#{player_name}, what's your first guess?"
guess = gets.to_i

# STEP 4 - check validity of guess
ok_guess = valid_guess(guess)

# STEP 5 = see if guess is correct & give hint
result = if_correct(ok_guess, number_guesses, secret_number)

puts "#{result}"

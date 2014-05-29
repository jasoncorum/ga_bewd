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


#[---------------------------------Intro--------------------------------------------]#
#Gets user's name
#and asks if they want to play

puts "Hello, what is your name?"
user_name = gets.chomp

creator = "Erik Anderson"

puts "Hello #{user_name.capitalize}, Shall we play a game, created by #{creator}?"

#method to get usser's name
def get_input_s
	gets.chomp.capitalize
end
choice = get_input_s

#method to get uers's guess
def get_input_i
	gets.chomp.to_i
end



#[---------------------------------Main Game method--------------------------------------------]#

#If user chooses no, say goodbye to them
if 	choice == "No"
		puts "Good day to you then!"
		exit
end

#If the user says yes, ask them for their first guess
if
	choice == "Yes"
		puts "Great!, I have a game for you, it's called " + "'Secret Number'."
		puts "\u00a0"
		puts "The follow are the rules to the Game: " + "\n" + "I will choose a random number between 1-10, your job is to guess this number in 3 tries or less. " + "\n" +
		"If you can't guess in 3 tries or less I win. If you can, you win the game!"
		puts "\u00a0"
		puts "What is your guess?"
end

#Guess  number starts at 3 and counts down to 1, using the downto DO loop
#The secret number is a random number between 1-10, using the rand method
secret_number = rand(10) + 1
	3.downto(1)	do |guesses|
	user_guess = get_input_i
	if	user_guess == secret_number
			puts "#{user_name.capitalize}, " + "you are a smarty pants, you guessed my secret number." #displayed to user if they win
			break
	elsif user_guess > secret_number
			puts "Too High!" + "\n" + "You have #{guesses-1} guesses left."
			puts "\u00a0"
	elsif user_guess < secret_number
			puts "Too Low!" + "\n" + "You have #{guesses-1} guesses left."
			puts "\u00a0"
##I am having trouble getting this else statment of 98-99 to display after the user goes through 3 attempts##			
	# else
	# 	puts "You LOOSE!" + "You have #{guesses} guesses left. " + "\n" + "The Secret Number was #{secret_number}."
	end
end

##I created the below  code that is displayed to all users, regardless if they have won the game or not
##The user is given what the rand mentod  on line 85
puts "\u00a0"
puts "The Game is over.\n"
r = secret_number
puts "\u00a0"
puts "The Secret number is " + "#{r}."

=begin
So this solution is still not perfect.
There are lots of validaiton errors, that can happen:
If I do not put in exactly what the code is looking for, I do not have exceptions built into the code, for error handeling, which would
be ideal to have. 
But I feel this is version is a major improvement over the first version I submitted. 
=end




















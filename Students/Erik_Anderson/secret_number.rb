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



#-------------[User's Name]--------------------------------------------------------#

#Asks the user's name, create the user_name variable
puts "Hello, what is your name?"
user_name = gets.chomp

#-------------[Computer greeting with user's name and game creator]---------------------------------------------------------#

#User is greated by user_name variable and asked if they want to play a game created by the variable #{creator}
creator = "Erik Anderson"

puts "Hello #{user_name}, Shall we play a game, created by #{creator}?" 

#--------------[Main methods]----------------------------------------------------------------#


#Create method for user input for printing yes_no
#The yes_no variable needs to be type string
def get_input_s
	gets.chomp.capitalize
end


#Create method for user to input their number guess
#This variable has to be type interger
def get_input_i
	gets.to_i 
end



#This method allows for the user to accept playing the game, if answer was YES the user is introduced to the game and rules
#If the user instead says NO to playing in the game the user is bid adiue
def user_input (choice)
	if  choice == "Yes"
		puts "Great!, I have a game for you, it's called " +"'Secret Number'."
		puts "\u00a0"
		puts "The follow are the rules to the Game: " + "\n" + "I will choose a random number between 1-10, your job is to guess this number in 3 tries or less. " + "\n" +
			"If you can't guess in 3 tries or less I win. If you can, you win the game!"
		puts "\u00a0"
		puts "\u266F----You are on #{$attempts} of 3 attempts-----\u266F"	
		puts "What is your guess?" 
		puts secret_number_eval
	else puts "Good day, to you, then!"
	
	end
end



#This is the method to evaluate the guess that the user puts in against the actual secret number which is a random interger between 1-10
#If the user is too high in their guess a "Too High" message is displayed
#If the user is too low in their guess a "Too Low" message is displayed
#If the user guesses the number, the user is congratulated for guessing the secret number
#This method also keeps track of how many guesses the user is on:
##if <=3 attempts the user can keep guessing.
##if >=3 the user looses the game.
def secret_number_eval(guess = get_input_i, secret_number = (rand() * 10).to_i)
	if guess > secret_number && $attempts <= 3
		puts "\u266F----You are on #{$attempts+= 1} of 3 attempts-----\u266F"
		puts "Too High!" 
		puts "Guess Again" 
		puts secret_number_eval 
	elsif guess < secret_number && $attempts <= 3
		puts "\u266F----You are on #{$attempts+= 1} of 3 attempts-----\u266F" 
		puts "Too Low!" 
		puts "Guess Again" 
		puts secret_number_eval  
	elsif $attempts <=3
		puts "You smarty pants, you guessed my secret number, which was " + "#{secret_number}."
	else $attempts >3
		puts "You Loose, the secret number was " + "#{secret_number}."
	end
end


$attempts = 1
choice = get_input_s
yes_no = user_input(choice)
puts yes_no


		














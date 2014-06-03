

require 'lib/player'
require 'lib/secret_number'

class Game
# this class will be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is structured properly

	attr_accessor :secret_number, :player, :guesses

	def initialize(player_name)
		@secret_number = SecretNumber.new.secret_number
		@player = Player.new(player_name)
		@guesses = 1
	end

	def rules
		puts "You must guess a number between 1 and 10,"
			puts "and you only get 3 tries to do so."
		puts "Good Luck!!!"
		puts
	end	

	def guess
		while @guesses <= 3
			puts "Please guess a number:"
			answer = gets.chomp.to_i # solcits guess
				if answer == secret_number # if answer is correct
			  	puts 
			  	puts "Congratulations, you are Correct!!!"
			  	@guesses = 10
			else
				if answer < secret_number #tests if is low wrong answer
					puts "Your guess is too low"
					else # if wrong high number
					puts "Your guess is too high"
				end
				@guesses += 1
				puts "You have #{4 - guesses} left before the game is over. Please enter a another number"
			end
		end
		if @guesses != 10 #message if lost
			puts
			puts "You have lost and the game is over."
			puts "The secret number was #{secret_number}."
		end
	end	

	def ending
		puts
		puts "Please tell all of your cool friends to play the Secret Number Game!!! :-)" # Mastermind marketing ploy
		puts
	end	
end

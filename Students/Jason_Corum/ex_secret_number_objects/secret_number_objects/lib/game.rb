require 'lib/person'
require 'lib/secret_number'

class Game
# this class will be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is structured properly

	attr_accessor :guess

	def initialize
		@guess = guess
	end

# The method below creates the scret number by pulling a random number from an array of the numbers 1 through 10.
	def create_secret_number
		@sn = SecretNumber.new.secret_number_sample # good
	end

# The method below substitutes "guess" for "guesses" when the player reaches their last guess.
	def num_count(num)
		if num == 1
		"#{num} guess"
		else
		"#{num} guesses"
		end
	end

# The method below gets a single guess from the user, strips out space and converts to integer.
	def get_number
		puts "What is your guess?"
    	@guess = gets.strip.to_i
	end

# The method below provides feed back to the player based on the number they enter. 
	def check
		if @guess <= 0
		puts 'Invalid entry. Please guess a number between 1 and 10.'
		elsif @guess > 10
		puts 'Invalid entry. Please guess a number between 1 and 10.'
		elsif @guess < @sn
		puts 'Your number is lower than the secret number'
		elsif @guess == @sn
		puts 'You guessed the secret number! You win!'
    	else @guess > @sn 
    	puts 'Your number is higher than the secret number.'
    	end
    end

# The method below groups all the necessary methods together and limits the player to 3 guesses.
	def game_loop
		create_secret_number
		3.downto(1) do |num|
		# this is good. If you wanted to give the user the option to play
		# again once the game has ended, do you know how might do that?
		puts "You have #{num_count(num)} before the game is over."
		get_number
		check
		break if @guess == @sn
		end
	end
end
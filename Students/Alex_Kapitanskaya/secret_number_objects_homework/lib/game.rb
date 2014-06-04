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

	def create_secret_number
		@sn = SecretNumber.new.secret_number
    end

	def player_guess
		puts "Please enter your guess."
		@guess = gets.to_i
	end

	def guessing_game		
		if guess.to_i == @sn.to_i
			puts "Congratulations! You won."
		elsif guess.to_i == 0
			puts "Invalid guess." 
		elsif guess.to_i > 10
			puts "Invalid guess."
		elsif guess.to_i > @sn.to_i
			puts "You guessed too high."
		elsif guess.to_i < @sn.to_i 
			puts "You guessed too low."
		end
	end

	def play_the_game
		create_secret_number
		3.downto(1) do |num|
		puts "You have #{num} guesses left."
		player_guess
		guessing_game
		break if @guess.to_i == @sn.to_i
		end
		unless @guess.to_i == @sn.to_i
		puts "Sorry, you lost. The secret number was #{@sn}."
	end
	end
end

secret_number = SecretNumber.new





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
		@sn = SecretNumber.new.secret_number_sample
	end

	def num_count(num)
		if num == 1
		"#{num} guess"
		else
		"#{num} guesses"
		end
	end

	def get_number
		puts "What is your guess?"
    	@guess = gets.strip.to_i
	end

	def check
		puts 'Your number is lower than the secret number' if @guess < @sn
    	puts 'You guessed the secret number! You win' if @guess == @sn
    	puts 'Your number is higher than the secret number.' if @guess > @sn
    end

	def game_loop
		create_secret_number
		3.downto(1) do |num|
		puts "You have #{num_count(num)} before the game is over."
		get_number
		check
		break if @guess == @sn
		end
	end
end
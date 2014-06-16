require 'lib/person'
require 'lib/secret_number'

class Game

	attr_accessor :player,:sec_number,:tries,:guess

	def initialize(player_name)
		@player = Person.new(player_name)
		@sec_number = SecretNumber.new
		@tries = 3
	end

	puts "Hi #{@player}! In this game, you will win by guessing the correct number. You have three tries to guess a number between 1 and 10."

	#need method that prompts user for input and verifies if guess is correct, if not move on.
	def opening
		puts "What is your guess, #{@player.gamer}?"
		@guess = gets
		if @guess.to_i == @sec_number.secret_number
			puts "Congrats, #{@player}. You guessed correctly!"
		else 
			next_round
		end
	end

	def next_round
		@tries -= 1 #decreases the amount of tries left
		if @tries >= 2 || @tries == 0 #this makes sure the printed results are grammatically correct
			puts "That\'s incorrect. You have #{@tries} attempts left."
		else
			puts "That\'s incorrect. You have #{@tries} attempt left."
		end

		if @guess.to_i < @sec_number.secret_number #this gives a hint to the player
			puts "You need to guess higher!"
		else
			puts "You need to guess lower!"
		end

		if @tries == 0 # limits the number of guesses
			puts "The game is over. The Secret Number is #{@sec_number.secret_number}."
		else
			opening
		end
	end
end


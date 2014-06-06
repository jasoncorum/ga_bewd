require 'lib/person.rb'
require 'lib/secret_number.rb'

class Game

	def welcome
		puts "Welcome to the Secret Number Game by Taha!"
		puts "------------------------------------------"
		puts "The rules of the game are simple: find the secret number in three guesses or less (hint: it's between 1 and 10)"
		puts "Let's start!"
		puts ""
	end

	def start
		puts "Please enter your name"
		player_name = gets.chomp
		player = Person.new(player_name)

		player_answer = ""
		
		until player_answer == "no"

			thesecret = SecretNumber.new.thesecret
			3.times do |guesses|

				##Informs player of how many guesses they have left and prompts for next answer
				guess_universe = ["First","Second","Last"]
				puts "What's your #{guess_universe[guesses]} of 3 guesses"
				guess=gets.to_i

				#Defines all possible answers
				answers = ["Too low!", "Wow #{player_name}, you just got the secret number. You would make a great spy! Apply here: https://www.cia.gov/careers/opportunities/clandestine/core-collector.html", "Too high!"]

				#Compares guess to secret number and returns 0 if guess < secret number, 1 if guess = secret number and 2 if guess > secret_number.
				position = (guess <=> thesecret) + 1
				puts answers [position] 
				if position == 1
					break
				end
				if guesses == 2
					puts "Oops, game over! The secret number was #{thesecret}"
				end
			end

			#Allows the player to exit or play again
			puts "Do you want to play again? (Yes/No)"
			player_answer = gets.chomp.downcase
		end
	end
# this class will be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is structured properly
end
class Person
# this class will likely be simple, and just remember its name

	attr_accessor :player

	def initialize
		@player = player
	end

# The method below creates a new player and stores their name in the variable.
	def create_player
		puts "What is your name?"
		@player = gets.strip.to_s
		puts "Welcome #{@player}!"
	end

# The method below explains the game to the player.
	def explain_game
		puts "In the Secret Number Game, you guess a number between 1 and 10 and, if you pick the right number, you win!"
		puts "Good luck #{@player}!"
	end

# The methid below ends the game.
	def end_game
		puts "Thank you for playing the Secret Number Game, #{@player}."
	end

end

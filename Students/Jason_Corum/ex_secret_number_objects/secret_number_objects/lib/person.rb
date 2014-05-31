class Person
# this class will likely be simple, and just remember its name

	attr_accessor :player

	def initialize
		@player = player
	end

	def create_player
		puts "What is your name?"
		@player = gets.strip.to_s
		puts "Good luck " + @player + "!"
	end

	def end_game
		puts "Thank you for playing the Secret Number Game, " + @player + "."
	end

end

secret_number = rand(11)

def intro
	puts "So, who wants to challenge Camacho to a game of Secret Number?"

	player_name = gets.chomp

	puts "Woah #{player_name} ! You're about to play mental ninjitzu!"
	puts "Let's layout the rules.  I gots myself a number, and you need to figure out what it is in three tries."
	puts "I'll be nice and tell you if you are over, under, or right on the money."
	puts "I'll be even tell you it's between one and ten.  LET'S GO!"
end

def number_of_guesses_left(secret_number)
	3.downto(1) do |count|
		
		if count == 1
			puts "You have #{count} guess left"
		else
			puts "You have #{count} guesses left"
		end
		puts "Guess Sucker!"

		guess = gets.chomp.to_i
		
		looper(guess, secret_number)
	end
	puts "The secret number is " +secret_number.to_s+ " son!"
end


def looper(guess, secret_number)
	high_low = guess <=> secret_number
	if high_low == 1
		puts "Too high!"
	elsif
		high_low == 0
		puts 'Oh you\'re a magician!'
			abort
	else
		puts "Too low!"
	end
end

intro()
number_of_guesses_left(secret_number)



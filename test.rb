def full_name first,last
	puts first + " " + last
end

full_name "Sabastian","Belser"

# 3
def is_prime? num
	return false if num <= 1
	Math.sqrt(num).to_i.downto(2).each {|i| return false if num % i == 0}
	true
end

puts is_prime? 13
puts is_prime? 12
puts is_prime? 1

# 4
require 'prime'

def prime_below n
	Prime.take_while {|i| i < n }
end

puts prime_below 14

# 5
contacts = {}

def get_contact (contact)
	puts "What is your name?"
	name = gets.chomp
	puts "What is your phone number?"
	phone = gets.chomp.to_i
	if not contacts[name]
		contacts[name] = phone
	end
	contacts
end

# 6
def get_responses(questions)
	questions.map{ |question| 
		puts question
		gets.chomp
		} 
end

# Guessing Game

def guessing_game
	puts "Guess a number between 1 and 100"
	correct = Random.new.rand(1..100)
	num_guesses = 1
	current_guess = gets.chomp.to_i

	while current_guess != correct
		if current_guess > correct 
			puts "The number is lower than #{current_guess}. Guess again"
		elsif current_guess < correct
			puts "The number is higher than #{current_guess}. Guess again"
		end
		current_guess = gets.chomp.to_i
		num_guesses = num_guesses + 1
	end
	puts "You guessed #{correct} in #{num_guesses} tries!"
end

# guessing_game

# Write a method to reverse a string in-place.
# Use only a while loop and indices.

def reverse!(str)
	i = 0
	while i < str.length / 2
		tmp = str[i]
		str[i] = str[str.length-1-i]
		str[str.length-1-i] = tmp
		i += 1
		# puts str
	end
end

# a = "kittens"
# puts reverse!(a)
# puts a

# Rewrite factorial without recursion.
def iterative_factorial(num)
	if num < 0
		return Float::NAN  # a constant meaning "Not a Number"
	end
	memo = 1
	(1..num).each do |i|
		memo = memo*i
	end
	memo
end

puts iterative_factorial(0)
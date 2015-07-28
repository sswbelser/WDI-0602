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
	print "Input name: "
	name = gets.strip
	print "Input phone number: "
	number = gets.strip
	contact[:name] = name
	contact[:number] = number
	p contact
end
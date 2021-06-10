# fibonacci

puts "select a number for test"
num = gets.chomp

def fibs(number)
	array_of_fibonacci_numbers = []
	0.upto(number.to_i) do |it|
		if it == 0
			array_of_fibonacci_numbers << it
		elsif it == 1
			array_of_fibonacci_numbers << it
		else
			array_of_fibonacci_numbers << array_of_fibonacci_numbers[it. - 1] + array_of_fibonacci_numbers[it - 2]
		end
	end
	array_of_fibonacci_numbers
end

puts "There is a fibonacci sequence of #{num} numbers: #{fibs(num)}. :)\n"

# fibonacci recursive

def fibs_rec(number)
	return [0] if number.to_i == 0
	return [0, 1] if number.to_i == 1

	array_of_fibonacci_numbers = fibs_rec(number.to_i - 1)
	array_of_fibonacci_numbers << array_of_fibonacci_numbers[-2] + array_of_fibonacci_numbers[-1]
end

puts "And there with recursive recursive call #{fibs_rec(num)}. Nice"
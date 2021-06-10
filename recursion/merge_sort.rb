# merge sort

def merge_sort(array_of_number)
	return array_of_number if array_of_number.length < 2

	divid = array_of_number.length / 2
	left_half = merge_sort(array_of_number[0...divid])
	right_half = merge_sort(array_of_number[divid...array_of_number.length])
	sorted = []

	until left_half.empty? || right_half.empty?
		left_half.first <= right_half.first ? sorted << left_half.shift : sorted << right_half.shift
	end
	sorted + left_half + right_half
end

puts merge_sort([3, 4, 5, 8, 6, 9, 7, 1, 2])
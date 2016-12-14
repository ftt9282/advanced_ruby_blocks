def bubble_sort(array)

	array.length.times do
		array.each_index do |index|
			if array[index+1] && array[index] > array[index+1]
				temp = array[index+1]
				array[index+1] = array[index]
				array[index] = temp
			end
		end
	end
	array
	
end

puts bubble_sort([88,9,100,11,100,29,36])
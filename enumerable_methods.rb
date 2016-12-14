module Enumerable
	
	def my_each
		for i in self
			yield(i)
		end
	end

	def my_each_with_index
		count = 0
		for i in self
			yield(i, count)
			count += 1
		end
	end

	def my_select
		array = []
		self.my_each do |i|
			array << i if yield(i) == true
		end
		return array
	end

	def my_all?
		flag = true
		self.my_each do |i|
			flag = false if yield(i) == false
		end
		return flag
	end

	def my_any?
		flag = false
		self.my_each do |i|
			flag = true if yield(i) == true
		end
		return flag
	end

	def my_none?
		flag = true
		self.my_each do |i|
			flag = false if yield(i) == true
		end
		return flag
	end

	def my_count(value = nil)
		if value
			count = 0
			self.my_each do |i|
				count += 1 if i == value
			end
			return count
		else
			return self.length
		end
	end

	def my_map
		array = []
		self.my_each do |i|
			array << yield(i)
		end
		return array
	end

end

array = [1, 2, 3]
thing = array.my_map { |i| i**2 }
puts thing.class
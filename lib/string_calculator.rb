class StringCalculator
	def self.add(numbers)
		return 0 if numbers.empty?
		custom_delimiter = numbers.start_with?("//") ? numbers[2] : ''
		numbers.split(/,|\n|#{custom_delimiter}/).map{|n| n.to_i }.inject(:+)
	end
end
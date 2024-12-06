class StringCalculator
	def self.add(numbers)
		return 0 if numbers.empty?
		custom_delimiter = numbers.start_with?("//") ? numbers[2] : ' '
		numbers = numbers.split(/,|\n|#{custom_delimiter}/).map{|n| n.to_i }
		negative_numbers = numbers.select { |n| n < 0 }

		return "negative numbers not allowed #{negative_numbers}" unless negative_numbers.empty?
		numbers.inject(:+)
	end
end
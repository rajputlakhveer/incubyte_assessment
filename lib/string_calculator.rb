class StringCalculator
	def self.add(numbers)
		return 0 if numbers.empty?
		numbers.split(/,|\n/).map{|n| n.to_i }.inject(:+)
	end
end
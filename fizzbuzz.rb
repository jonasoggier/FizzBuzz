# Test
class Fizzbuzz
	def self.identify number
		if (number%3 == 0 && number%5 == 0) || (number.to_s.include?("3") && number.to_s.include?("5"))
			"FizzBuzz"
		elsif (number% 3== 0 || number%5 == 0) && (number.to_s.include?("3") || number.to_s.include?("5"))
			"FizzBuzz"
		else 
			if number%3 == 0|| number.to_s.include?("3")
				"Fizz"
			elsif number%5 == 0|| number.to_s.include?("5")
				"Buzz"
			else
				"NoFizzBuzz"
			end
		end
	end
end

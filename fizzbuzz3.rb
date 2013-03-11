class Fizzbuzz
	def self.identify number
		if (check_modulus_three(number) && check_modulus_five(number)) || (check_includes_three(number) && check_includes_five(number))
			"FizzBuzz"
		elsif (check_modulus_three(number) || check_modulus_five(number)) && (check_includes_three(number) || check_includes_five(number))
			"FizzBuzz"
		elsif check_modulus_three(number) || check_includes_three(number)
			"Fizz"
		elsif check_modulus_five(number) || check_includes_five(number)
			"Buzz"
		else
			"NoFizzBuzz"
		end
	end
	
	def self.check_modulus_three(number)
		number%3==0
	end

	def self.check_modulus_five(number)
		number%5==0
	end

	def self.check_includes_three(number)
		number.to_s.include?("3")
	end

	def self.check_includes_five(number)
		number.to_s.include?("5")
	end
end

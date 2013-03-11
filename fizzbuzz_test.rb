require "simplecov"
SimpleCov.start

require "test/unit"	
require_relative "fizzbuzz3"

class FizzbuzzTest < Test::Unit::TestCase
	def test_is_divisible_by_three		
		assert_equal "Fizz", Fizzbuzz.identify(9)
	end

	def test_has_three_in_it	
		assert_equal "Fizz", Fizzbuzz.identify(13)
	end

	def test_is_divisible_by_five	
		assert_equal "Buzz", Fizzbuzz.identify(20)
	end

	def test_has_five_in_it		
		assert_equal "Buzz", Fizzbuzz.identify(52)
	end

	def test_is_divisible_by_three_and_five		
		assert_equal "FizzBuzz", Fizzbuzz.identify(15)
	end

	def test_has_three_and_five_in_it			
		assert_equal "FizzBuzz", Fizzbuzz.identify(531)
	end

	def test_has_neither_three_nor_five_in_it			
		assert_equal "NoFizzBuzz", Fizzbuzz.identify(11)
	end

	def test_is_neither_divisible_by_three_and_five				
		assert_equal "NoFizzBuzz", Fizzbuzz.identify(11)
	end

	def test_floats				
		assert_equal "NoFizzBuzz", Fizzbuzz.identify(11.4)
	end

	def test_divisible_by_three_and_has_a_five				
		assert_equal "FizzBuzz", Fizzbuzz.identify(51)
	end
	def test_divisible_by_five_and_has_a_three				
		assert_equal "FizzBuzz", Fizzbuzz.identify(305)
	end
end
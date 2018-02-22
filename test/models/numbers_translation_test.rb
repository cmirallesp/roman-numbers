require 'test_helper'
class NumbersTranslationTest < ActiveSupport::TestCase
	def setup
		@t= ::NumbersTranslation.new()
	end
	test "roman_to_number" do
		assert_equal 3,@t.roman_to_number("III")
		assert_equal 4,@t.roman_to_number("IV")
		assert_equal 900,@t.roman_to_number("CM")
		assert_equal 291,@t.roman_to_number("CCXCI")
		assert_equal 944,@t.roman_to_number("CMXLIV")
		assert_equal 15,@t.roman_to_number("XV")
	end


	test "number_to_roman" do
		assert_equal "III", @t.number_to_roman(3)
		assert_equal "IV", @t.number_to_roman(4)
		assert_equal "CM", @t.number_to_roman(900)
		assert_equal "XXIX", @t.number_to_roman(29)
		assert_equal "XXXVIII", @t.number_to_roman(38)
		assert_equal "MCMXCIX", @t.number_to_roman(1999)
		assert_equal "MMMCMXCIX", @t.number_to_roman(3999)
	end
end

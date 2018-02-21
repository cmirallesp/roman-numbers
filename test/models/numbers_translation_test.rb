require 'test_helper'
class NumbersTranslationTest < ActiveSupport::TestCase
	test "roman_to_number" do
		t= ::NumbersTranslation.new()
		assert_equal 3,t.roman_to_number("III")
		assert_equal 4,t.roman_to_number("IV")
		assert_equal 900,t.roman_to_number("CM")
		assert_equal 291,t.roman_to_number("CCXCI")
	end
end

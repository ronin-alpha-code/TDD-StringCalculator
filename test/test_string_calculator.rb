require "minitest/autorun"
require_relative "../lib/string_calculator"

class TestStringCalculator < Minitest::Test
  def test_empty_string_returns_0
    assert_equal 0, StringCalculator.add("")
  end

  def test_single_number_returns_number
    assert_equal 1, StringCalculator.add("1")
    assert_equal 2, StringCalculator.add("2")
    assert_equal 3, StringCalculator.add("3")
  end

  def test_two_numbers_separated_by_comma_returns_sum
    assert_equal 3, StringCalculator.add("1,2")
    assert_equal 5, StringCalculator.add("2,3")
    assert_equal 7, StringCalculator.add("3,4")
  end
end

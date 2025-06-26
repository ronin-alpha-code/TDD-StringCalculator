require "minitest/autorun"
require_relative "../lib/string_calculator"

class TestStringCalculator < Minitest::Test

  def string_calculator
    StringCalculator.new
  end

  def test_empty_string_returns_0
    assert_equal 0, string_calculator.add("")
  end

  def test_single_number_returns_number
    assert_equal 1, string_calculator.add("1")
    assert_equal 2, string_calculator.add("2")
    assert_equal 3, string_calculator.add("3")
  end

  def test_two_numbers_separated_by_comma_returns_sum
    assert_equal 3, string_calculator.add("1,2")
    assert_equal 5, string_calculator.add("2,3")
    assert_equal 7, string_calculator.add("3,4")
  end

  def test_multiple_numbers_separated_by_comma_returns_sum
    assert_equal 6, string_calculator.add("1,2,3")
    assert_equal 10, string_calculator.add("2,3,5")
    assert_equal 46, string_calculator.add("3,4,8,7,9,4,5,6")
  end

  def test_string_with_new_line_delimeter
    assert_equal 6, string_calculator.add("1,2\n3")
    assert_equal 10, string_calculator.add("2\n3,5")
    assert_equal 46, string_calculator.add("3\n4,8,7,9,4,5,6")
  end

  def test_string_with_negative_single_numbers
    assert_raises(RuntimeError) do
      string_calculator.add("1,-2,3")
    end
    assert_raises(RuntimeError) do
      string_calculator.add("2,-3,5")
    end
  end

  def test_string_with_multiple_negative_numbers
    assert_raises(RuntimeError) do
      string_calculator.add("1,-2,-3")
    end
    assert_raises(RuntimeError) do
      string_calculator.add("2,-3,-5")
    end
  end

  def test_string_with_value_greater_than_1001
    assert_equal 1, string_calculator.add("1001,1")
    assert_equal 2, string_calculator.add("1002,2")
    assert_equal 3, string_calculator.add("1003,3")
  end

  def test_custom_delimiters
    assert_equal 3, string_calculator.add("//;\n1;2")
    assert_equal 6, string_calculator.add("//;\n1;2\n3")
  end

  def test_delimiters_with_any_length
    assert_equal 6, string_calculator.add("//[***]\n1***2***3")
    assert_equal 10, string_calculator.add("//[***]\n1***5***4")
  end
end

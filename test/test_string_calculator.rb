require "minitest/autorun"
require_relative "../lib/string_calculator"

class TestStringCalculator < Minitest::Test
  def test_empty_string_returns_0
    assert_equal 0, StringCalculator.add("")
  end
end

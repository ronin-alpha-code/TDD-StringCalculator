class StringCalculator
  def self.add(string)
    ## Condition 1: If the string is empty, return 0.
    return 0 if string.empty?
    ## Condition 2: If the string contains a single number, return that number.
    return string.to_i if string.match?(/^\d+$/) ## /^\d+$/ identifies the single number

    ## Condition 3: If the string contains two numbers separated by a comma, return their sum.
    numbers = string.split(",").map(&:to_i)
    sum = 0
    numbers.each{ |number| sum += number }
    return sum
  end
end
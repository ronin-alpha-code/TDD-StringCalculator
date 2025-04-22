class StringCalculator
  def self.add(string)
    ## Condition 1: If the string is empty, return 0.
    return 0 if string.empty?
    ## Condition 2: If the string contains a single number, return that number.
    return string.to_i if string.match?(/^\d+$/) ## /^\d+$/ identifies the single number
  end
end
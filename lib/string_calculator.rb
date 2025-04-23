class StringCalculator
  def self.add(string)
    ## Condition 1: If the string is empty, return 0.
    return 0 if string.empty?
    ### Condition if string contains only one number or multiple number separated by comma or separated by new line or any other white space
    sum = 0
    string = string.gsub(/\s+/, ",")
    numbers = string.split(",")
    numbers.each do |num|
      raise "Negatives not allowed" if num.to_i < 0
      sum += num.to_i
    end
    sum
  end
end
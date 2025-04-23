class StringCalculator
  def self.add(string)
    ## Condition 1: If the string is empty, return 0.
    return 0 if string.empty?
    ### Condition if string contains only one number or multiple number separated by comma or separated by new line or any other white space
    sum = 0
    string = string.gsub(/\s+/, ",")
    numbers = string.split(",")
    numbers.each do |num|
      sum += num.to_i
    end
    sum
  end
end

puts StringCalculator.add("1\n2,3")
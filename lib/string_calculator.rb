class StringCalculator
  def self.add(string)
    ## Condition 1: If the string is empty, return 0.
    return 0 if string.empty?
    ### Condition if string contains only one number or multiple number separated by comma or separated by new line or any other white space
    sum = 0
    error = []
    string = string.gsub(/\s+/, ",")
    numbers = string.split(",")
    numbers.each do |num|
      # raise "Negatives not allowed" if num.to_i < 0 this will raise for first negative number that will be found
      error << "#{num.to_i} Negative not allowed" if num.to_i < 0 ## This will store and return all negative numbers
      next if num.to_i > 1000 ## This will ignore all numbers greater than 1000
      sum += num.to_i
    end
    error.any? ? (raise error.join(", ")) : sum
  end
end
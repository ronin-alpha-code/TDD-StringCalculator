class StringCalculator
  def add(string)
    return 0 if string.empty?
    delimiters = fetch_delimiters(string)
    numbers = fetch_numbers(string, delimiters)
    negatives = fetch_negatives(numbers)
    raise "Negatives not allowed: #{negatives.join('-')}" if negatives.any?
    numbers.select{|num| num <= 1000 }.sum
  end

  private

  def fetch_delimiters string
    return "," unless string.start_with?("//")
    delimiter, input = string[2..].split("\n", 2)
    [Regexp.escape(delimiter)]
  end

  def fetch_numbers string, delimiters
    string.split(/#{Regexp.union(delimiters)}|\n/).map(&:to_i)
  end

  def fetch_negatives numbers
    numbers.select { |num| num < 0 }
  end
end

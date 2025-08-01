class StringCalculator
  def self.add(input)
    return 0 if input.empty?
    delimiter = /,|\n/
    if input.start_with?("//")
      parts = input.split("\n", 2)
      delimiter = Regexp.new(Regexp.escape(parts[0][2..]))
      input = parts[1]
    end
    numbers = input.split(delimiter).map(&:to_i)
    negatives = numbers.select { |n| n < 0 }
    raise "negative numbers not allowed #{negatives.join(',')}" if negatives.any?
    numbers.sum
  end
end

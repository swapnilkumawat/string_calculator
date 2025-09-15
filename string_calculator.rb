class StringCalculator

  def self.add(numbers)
    return 0 if numbers.strip.empty?

    if numbers.start_with?("//")
      delimiter, nums = numbers.match(%r{\/\/(.)\n(.*)}).captures
      numbers = nums.split(delimiter)
    else
      numbers = numbers.split(/,|\n/)
    end

    numbers = numbers.map(&:to_i)

    negatives = numbers.select { |n| n < 0 }
    unless negatives.empty?
      raise "negative numbers not allowed #{negatives.join(',')}"
    end

    numbers.sum
  end

end

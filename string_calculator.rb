class StringCalculator

  def self.add(numbers)
    return 0 if numbers.strip.empty?

    delimiters, numbers_part = parse_delimiter(numbers)
    num_list = split_numbers(numbers_part, delimiters)
    check_negatives(num_list)
    num_list.sum
  end

  private

  def self.parse_delimiter(numbers)
    if numbers.start_with?("//")
      delimiter, nums = numbers.match(%r{\/\/(.)\n(.*)}).captures
      [[delimiter], nums]
    else
      [ [",", "\n"], numbers ]
    end
  end

  def self.split_numbers(numbers_part, delimiters)
    pattern = Regexp.union(delimiters)
    numbers_part.split(pattern).map(&:to_i)
  end

  def self.check_negatives(numbers)
    negatives = numbers.select { |n| n < 0 }
    unless negatives.empty?
      raise "negative numbers not allowed #{negatives.join(',')}"
    end
  end

end

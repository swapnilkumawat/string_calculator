class StringCalculator

  def self.add(numbers)
    return 0 if numbers.strip.empty?

    if numbers.start_with?("//")
      delimiter, nums = numbers.match(%r{\/\/(.)\n(.*)}).captures
      numbers = nums.split(delimiter)
    else
      numbers = numbers.split(/,|\n/)
    end
  
    numbers.map(&:to_i).sum
  end

end

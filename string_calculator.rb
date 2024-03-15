class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    delimiter = ','
    if numbers.start_with?("//")
      delimiter = numbers[2]
      numbers = numbers.split("\n", 2)[1]
    end

    numbers.split(/[#{delimiter}\n]/).map(&:to_i).sum
  end
end

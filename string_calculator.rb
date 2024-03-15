class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    delimiter = ','
    if numbers.start_with?("//")
      delimiter_match = numbers.match(/\/\/\[(.*?)\]\n/)
      if delimiter_match
        delimiter = delimiter_match[1]
      else
        delimiter = numbers[2]
      end
      numbers = numbers.split("\n", 2)[1]
    end

    negatives = numbers.split(/[#{delimiter}\n]/).map(&:to_i).select { |num| num.negative? }

    if negatives.any?
      raise "Negatives not allowed: #{negatives.join(', ')}"
    end

    numbers.split(/[#{delimiter}\n]/).map(&:to_i).select { |num| num <= 1000 }.sum

  end
end

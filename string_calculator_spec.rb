require_relative 'string_calculator'

RSpec.describe StringCalculator do
  describe ".add" do
    it "handle empty string" do
      expect(StringCalculator.add("")).to eq(0)
    end

    it "handle single number string" do
      expect(StringCalculator.add("1")).to eq(1)
    end

    it "handle the sum of two numbers" do
      expect(StringCalculator.add("1,5")).to eq(6)
    end

     it "handle the sum of multiple numbers" do
      expect(StringCalculator.add("1,2,3,4,5")).to eq(15)
    end

    it "handle the sum of numbers separated by new lines and commas" do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end

    it "handle the sum of numbers separated by any delimiter" do
      expect(StringCalculator.add("//;\n1;2")).to eq(3)
    end
  end
end

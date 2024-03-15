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
  end
end

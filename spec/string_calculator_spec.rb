require_relative "../string_calculator"

RSpec.describe StringCalculator do
  describe "#add" do

    it "returns 0 for empty string" do
      expect(StringCalculator.add("")).to eq(0)
    end

    it "returns the number when input has a single number" do
      expect(StringCalculator.add("1")).to eq(1)
    end

    it "returns the sum of two comma-separated numbers" do
      expect(StringCalculator.add("1,2")).to eq(3)
    end

    it "returns the sum of multiple comma-separated numbers" do
      expect(StringCalculator.add("5,6,7,8")).to eq(26)
    end

    it "handles newlines between numbers" do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end

    it "handles custom delimiter defined at the start" do
      expect(StringCalculator.add("//;\n1;2")).to eq(3)
    end

    it "raises an error if negative numbers are present" do
      expect { StringCalculator.add("-1,-2,3,4") }.to raise_error(RuntimeError, "negative numbers not allowed -1,-2")
    end

  end
end

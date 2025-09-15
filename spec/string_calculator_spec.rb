require_relative "../string_calculator"

RSpec.describe StringCalculator do
  describe "#add" do

    it "returns 0 for empty string" do
      expect(StringCalculator.add("")).to eq(0)
    end

    it "returns the number when input has a single number" do
      expect(StringCalculator.add("1")).to eq(1)
    end

  end
end

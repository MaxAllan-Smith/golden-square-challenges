require "calculate_reading_time"

describe "calculate_reading_time method:" do
  context "When given an empty string," do
    it "return zero" do
      result = calculate_reading_time("")
      expect(result).to eq(0)
    end
  end

  context "When give one word," do
    it "return one" do
      result = calculate_reading_time("one")
      expect(result).to eq(1)
    end
  end

  context "When given one-hundred words," do
    it "returns one" do
      result = calculate_reading_time("one " * 100)
      expect(result).to eq(1)
    end
  end

  context "When given four-hundred words," do
    it "returns two" do
      result = calculate_reading_time("one " * 400)
      expect(result).to eq(2)
    end
  end
end
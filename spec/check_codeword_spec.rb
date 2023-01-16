require "check_codeword"

describe "check_codeword method" do
  it "should return 'Correct! Come in.' if codeword is equal to 'horse'" do
    result = check_codeword("horse")
    expect(result).to eq("Correct! Come in.")
  end

    it "should return 'Close, but nope.'" do
      result = check_codeword("house")
      expect(result).to eq("Close, but nope.")
    end

    it "should return 'WRONG!'" do
      result = check_codeword("Elephant")
      expect(result).to eq("WRONG!")
    end
end
require "capitalize_string"

describe "capitalize_string method:" do
  it "returns error if string is empty" do
    expect{capitalize_string("")}.to raise_error "Invalid Input: Please Enter Text"
  end

  it "returns false when first letter is capital" do
    result = capitalize_string("Hello")
    expect(result).to eq false
  end

  it "returns false when last character is wrong punctuation" do
    result = capitalize_string("hello,")
    expect(result).to eq false
  end
  
  it "returns true if capitalized and correct punctuation" do
    result = capitalize_string("Hello.")
    expect(result).to eq true
  end
  
  it "returns false if capitalized and wrong punctuation" do
    result = capitalize_string("Hello mate,")
    expect(result).to eq false
  end

end





# capitalize_string("")
# # => "Invalid Input: Please Enter Text"

# [COMPLETED] capitalize_string("Hello.")
# # => true

# [COMPLETED] capitalize_string("hello.")
# # => false

# [COMPLETED] capitalize_string("Hello")
# # => false

# capitalize_string("Hello mate,")
# # => false
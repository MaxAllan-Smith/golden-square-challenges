require "report_length"

describe "report_length method" do
  it "should return a string that counts the length of the variable string" do
    result = report_length("Hello World!")
    expect(result).to eq("This string was 12 characters long.")
  end
end
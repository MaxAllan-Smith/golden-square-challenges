require "add_five"

describe "add_five method" do
  it "should be adds 5 to 3 and returns 8" do
    result = add_five(3)
    expect(result).to eq 8
  end
end
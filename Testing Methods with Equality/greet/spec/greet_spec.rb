require "greet"

describe "greets the user" do
  it "will greet the user by their name" do
    result = greet("Max")
    expect(result).to eq("Hello, Max!")
  end
end
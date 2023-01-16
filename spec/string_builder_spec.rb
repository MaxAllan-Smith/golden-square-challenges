require "string_builder"

describe StringBuilder do
  it "should check for 'Tony'" do
    builder = StringBuilder.new
    result = builder.add("Tony")
    expect(result).to eq("Tony")    
  end    
end
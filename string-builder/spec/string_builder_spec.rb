require "string_builder"

describe StringBuilder do
  it "should check for 'Tony'" do
    builder = StringBuilder.new
    result = builder.add("Tony")
    expect(result).to eq("Tony")    
  end
  
  it 'should return 4 as the length of "Tony"' do
    builder = StringBuilder.new
    builder.add('Tony')
    result = builder.size
    expect(result).to eq 4
  end

  it 'should return "Tony"' do
    builder = StringBuilder.new
    builder.add('Tony')
    result = builder.output
    expect(result).to eq 'Tony'
  end
end
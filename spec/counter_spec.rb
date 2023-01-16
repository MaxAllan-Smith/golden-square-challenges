require "counter"

describe Counter do
  it "will add 5 to count" do
    counter = Counter.new
    result = counter.add(5)
    expect(result).to eq(5)
  end

  it "will return the counted number given to count" do
    counter = Counter.new
    counter.add(5)
    result = counter.report
    expect(result).to eq("Counted to 5 so far.")
  end
end
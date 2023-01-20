require "exercise"

describe DiaryEntry do
  context "Basic Test:" do
    it "Checks for empty strings in Initiliaze" do
      entry = DiaryEntry.new("Thursday", "I feel tired")
      expect(entry.title).to eq("Thursday")
      expect(entry.contents).to eq("I feel tired")
    end
  end

  it "checks the count_words method" do
    entry = DiaryEntry.new("Thursday", "I feel Great")
    expect(entry.count_words).to eq(3)
  end

  it "returns estimated reading time" do 
    entry = DiaryEntry.new("Friday", "I feel like a legend")
    expect(entry.reading_time(100)).to eq(1)
  end

  it "returns estimated reading time" do
    contains = "one " * 105
    entry = DiaryEntry.new("Thursday", contains)
    expect(entry.reading_time(100)).to eq(2)
  end

  it "returns the full contents" do
    entry = DiaryEntry.new("Friday", "one two three")
    chunk = entry.reading_chunk(200, 1)
    expect(chunk).to eq("one two three")
  end

end


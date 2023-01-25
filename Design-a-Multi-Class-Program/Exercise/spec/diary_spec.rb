require "diary"

describe Diary do
  it "initially has an empty list of entries" do
    diary = Diary.new
    expect(diary.entries).to eq([])
  end
end
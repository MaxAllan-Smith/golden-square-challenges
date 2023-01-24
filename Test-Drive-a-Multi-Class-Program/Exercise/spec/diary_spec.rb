require "diary"

describe Diary do
  context "Initially:" do
    it "Has an empty list of entries" do
      diary = Diary.new
      expect(diary.all).to eq([])
    end

    it "Has a word count of 0" do
      diary = Diary.new
      expect(diary.count_words).to eq(0)
    end
  end
end
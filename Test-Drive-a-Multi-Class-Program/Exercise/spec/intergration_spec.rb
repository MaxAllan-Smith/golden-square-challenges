require "diary"
require "diary_entry"

describe "Integration:" do
  context "After adding some entries" do
    it "Lists out all the entries" do
      diary = Diary.new
      diary_entry1 = DiaryEntry.new("Entry 1", "Contents 1")
      diary_entry2 = DiaryEntry.new("Entry 2", "Contents 2")
      diary.add(diary_entry1)
      diary.add(diary_entry2)
      expect(diary.all).to eq([diary_entry1, diary_entry2])
    end
  end

  context "#Count_Words" do
    it "Returns zero if contents is empty" do
      diary_entry = DiaryEntry.new("my_title", "")
      expect(diary_entry.count_words).to eq(0)
    end

    it "Returns one if contents is one word" do
      diary_entry = DiaryEntry.new("my_title", "one")
      expect(diary_entry.count_words).to eq(1)
    end

    it "Counts the words in the contents" do
      diary_entry = DiaryEntry.new("my_title", "one, two, three, four")
      expect(diary_entry.count_words).to eq(4)
    end
  end
end
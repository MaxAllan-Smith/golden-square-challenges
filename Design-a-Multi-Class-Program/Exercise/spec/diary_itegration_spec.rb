require "diary"
require "diary_entry"
require "diary_reader"
require "phone_number_crawler"

describe "Diary Integration:" do
  it " Adds diary entries to the list" do
    diary = Diary.new
    entry_1 = DiaryEntry.new("title1", "contents1")
    entry_2 = DiaryEntry.new("title2", "contents2")
    diary.add(entry_1)
    diary.add(entry_2)
    expect(diary.entries).to eq [entry_1, entry_2]
  end
end

describe "Diary reading behaviour" do
  context " Where there is a perfect diary entry to read in the time" do
    it "finds that entry" do
      diary = Diary.new
      reader = DiaryReader.new(2, diary)
      entry_1 = DiaryEntry.new("title1", "one")
      entry_2 = DiaryEntry.new("title2", "one two")
      entry_3 = DiaryEntry.new("title3", "one two three")
      entry_4 = DiaryEntry.new("title4", "one two three four")
      entry_5 = DiaryEntry.new("title5", "one two three four five")
      diary.add(entry_1)
      diary.add(entry_2)
      diary.add(entry_3)
      diary.add(entry_4)
      diary.add(entry_5)
      expect(reader.find_most_readable(2)).to eq entry_4
    end
  end

  context "Where the best entry is a bit shorter than optimum" do
    it "find that entry" do
      diary = Diary.new
      reader = DiaryReader.new(2, diary)
      entry_1 = DiaryEntry.new("title1", "one")
      entry_2 = DiaryEntry.new("title2", "one two")
      entry_3 = DiaryEntry.new("title3", "one two three")
      entry_4 = DiaryEntry.new("title4", "one two three four five")
      diary.add(entry_1)
      diary.add(entry_2)
      diary.add(entry_3)
      diary.add(entry_4)
      expect(reader.find_most_readable(2)).to eq entry_3
    end
  end

  context "Where there is nothing readable in the time" do
    it "returns nil" do
      diary = Diary.new
      reader = DiaryReader.new(2, diary)
      entry_1 = DiaryEntry.new("title1", "one two three four five")
      diary.add(entry_1)
      expect(reader.find_most_readable(2)).to eq nil
    end
  end

  context "where there is nothing at all" do
    it "returns nil" do
      diary = Diary.new
      reader = DiaryReader.new(2, diary)
      expect(reader.find_most_readable(2)).to eq nil
    end
  end

  context "Where WPM is invalid" do
    it "fails" do
      diary = Diary.new
      expect {
        DiaryReader.new(0, diary)
      }.to raise_error("WPM must be above 0")
    end
  end
end

describe "phone number extraction behaviour" do
  it "extracts phone number extraction behaviour" do
    diary = Diary.new
    phone_book = PhoneNumberCrawler.new(diary)
    diary.add(DiaryEntry.new("title1", "Friend Name: 07847954714]"))
    diary.add(DiaryEntry.new("title2", "Friend Name: 07931918675"))
    expect(phone_book.extract_numbers).to eq([
      "07847954714",
      "07931918675"
    ])
  end
end
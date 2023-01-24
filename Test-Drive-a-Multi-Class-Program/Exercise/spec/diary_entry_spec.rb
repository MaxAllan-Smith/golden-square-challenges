require "diary_entry"

describe DiaryEntry do
  it "Constructs" do
    diary_entry = DiaryEntry.new("my_title", "my_contents")
    expect(diary_entry.title).to eq("my_title")
    expect(diary_entry.contents).to eq("my_contents")
  end
end


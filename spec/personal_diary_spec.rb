require "personal_diary"

describe PersonalDiary do
  context "Should"do
    it "return the string" do
      diary = PersonalDiary.new
      result = diary.make_snippet("One Two Three Four Five")
      expect(result).to eq("One Two Three Four Five") 
    end

    it "return the string with '...' if string is more than 5" do
      diary = PersonalDiary.new
      result = diary.make_snippet("One Two Three Four Five Six Seven Eight")
      expect(result).to eq("One Two Three Four Five ...")
    end

    it "return the number of counted words in the string" do
      diary = PersonalDiary.new
      result = diary.count_words("One Two Three Four Five Six Seven")
      expect(result).to eq(7)
    end
  end
end
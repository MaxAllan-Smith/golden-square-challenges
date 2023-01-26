require "diary"
require "secret_diary"

describe "Integration:" do
  context "Initially," do
    it "does not read the diary because it is locked" do
      diary = Diary.new("My Contents")
      secret_diary = SecretDiary.new(diary)
      expect { secret_diary.read }.to raise_error("Go away!")
    end
  end

  context "When unlocked" do
    it "read the contents of the diary" do
      diary = Diary.new("My Contents")
      secret_diary = SecretDiary.new(diary)
      secret_diary.unlock
      expect(secret_diary.read).to eq("My Contents")
    end
  end

  context "When locked" do
    it "fails with 'Go away!'" do
      diary = Diary.new("My Contents")
      secret_diary = SecretDiary.new(diary)
      secret_diary.unlock
      secret_diary.lock
      expect {secret_diary.read}.to raise_error("Go away!")
    end
  end
end
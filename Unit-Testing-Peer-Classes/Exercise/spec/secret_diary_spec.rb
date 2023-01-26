require "secret_diary"

describe SecretDiary do
  context "Initially," do
      it "does not read the diary because it is locked" do
        diary = double(:diary)
        secret_diary = SecretDiary.new(diary)
        expect { secret_diary.read }.to raise_error("Go away!")
      end
  end

  context "When unlocked" do
    it "read the diary contents" do
      diary = double(:diary, read: "Fake Contents")
      secret_diary = SecretDiary.new(diary)
      secret_diary.unlock
      expect(secret_diary.read).to eq("Fake Contents")
    end
  end

  context "When locked" do
    it "fails with 'Go away!'" do
      dairy = double(:diary)
      secret_diary = SecretDiary.new(dairy)
      secret_diary.unlock
      secret_diary.lock
      expect { secret_diary.read }.to raise_error("Go away!")
    end
  end
end
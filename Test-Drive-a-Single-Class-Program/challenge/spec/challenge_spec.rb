require 'challenge'

describe GrammarStats do
  context "Check Error:" do
    it "String Does Not Start with a Capital Letter." do
      grammerStats = GrammarStats.new
      expect(grammerStats.check(text)).to eq("Hello")
    end
  end
end
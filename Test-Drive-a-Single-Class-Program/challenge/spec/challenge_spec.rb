require 'challenge'

describe GrammarStats do
  context "'Check' Method Tests:" do
    it "Should return as FALSE when string does not start without a capital letter or a punctuation mark." do
      grammerStats = GrammarStats.new
      result = grammerStats.check("hello")
      expect(result).to eq(false)
    end
    
    it "Should return as FALSE when string does start with a capital letter or a punctuation mark." do
      grammerStats = GrammarStats.new
      result = grammerStats.check("Hello")
      expect(result).to eq(false)
    end

    it "Should return as FALSE when the string starts without a capital letter and  ends with the correct punctuation mark." do
      grammerStats = GrammarStats.new
      result = grammerStats.check("hello.")
      expect(result).to eq(false)
    end

    it "Should return as TRUE when the string starts with a capital letter and ends with a punctuation mark." do
      grammerStats = GrammarStats.new
      result = grammerStats.check("Hello.")
      expect(result).to eq(true)
    end
  end

  context "'Percentage_Good' Method Tests:" do
    it "Should return 50 when 'Check' method is given 6 words. (Four words: FALSE Two words: TRUE" do
      grammerStats = GrammarStats.new
      result = grammerStats.percentage_good
      expect(result).to eq(50)
    end
  end
end
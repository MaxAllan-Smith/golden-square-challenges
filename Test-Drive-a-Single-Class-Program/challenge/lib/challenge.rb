class GrammarStats
  def initialize
    #...
  end

  def check(text) 
    # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.

    case 
    when text[0].scan(/[A-Z]/).any? == false && text.scan(/[.!?]/).any? == false
      return false
    when text[0].scan(/[A-Z]/).any? == true && text.scan(/[.!?]/).any? == false
      return false
    when text[0].scan(/[A-Z]/).any? == false && text.scan(/[.!?]/).any? == true
      return false
    when text[0].scan(/[A-Z]/).any? && text.scan(/[.!?]/).any?
      return true
    else
      
    end
    
  end

  def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
  end
end

run = GrammarStats.new

puts run.check("Hello")
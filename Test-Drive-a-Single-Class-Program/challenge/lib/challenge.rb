class GrammarStats

  def initialize
    @returnTrue = 0
    @returnFalse = 0
  end

  def check(text) 
    # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.

    case 
    when text[0].scan(/[A-Z]/).any? == false && text.scan(/[.!?]/).any? == false
      @returnFalse += 1
      return false
    when text[0].scan(/[A-Z]/).any? == true && text.scan(/[.!?]/).any? == false
      @returnFalse += 1
      return false
    when text[0].scan(/[A-Z]/).any? == false && text.scan(/[.!?]/).any? == true
      @returnFalse += 1
      return false
    when text[0].scan(/[A-Z]/).any? && text.scan(/[.!?]/).any?
      @returnTrue += 1
      return true
    else
      
    end

  end

  def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.

    check("hello")
    check("hello")
    check("Hello.")
    check("Hello.")

    total = @returnFalse + @returnTrue

    result = (@returnTrue.to_f / total) * 100

    return result.round()

  end
end

run = GrammarStats.new

run.percentage_good
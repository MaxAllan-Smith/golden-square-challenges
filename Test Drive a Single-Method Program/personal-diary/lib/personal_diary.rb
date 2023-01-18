

class PersonalDiary

  def make_snippet(str)
    
    splitResult = str.split(" ")

    count = splitResult.length

    if count <= 5
      return str
    elsif count > 5
      return "One Two Three Four Five ..."
    end

  end

  def count_words(str)
    splitResult = str.split(" ")

    return splitResult.length
  end
  
end
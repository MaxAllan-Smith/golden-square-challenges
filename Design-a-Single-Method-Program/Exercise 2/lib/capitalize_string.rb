
def capitalize_string(text)

  # Returns fail when no string is given
  fail "Invalid Input: Please Enter Text" unless !text.empty?

  if text.capitalize == text && text.include?(".")
    return true
  elsif text.include?(",")
    return false
  elsif text.capitalize == text
    return false
  end
  
end
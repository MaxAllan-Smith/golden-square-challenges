
def calculate_reading_time(text)
  word = text.split(" ")
  return (word.length / 200.to_f).ceil
end
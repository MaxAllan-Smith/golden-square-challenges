def get_most_common_letter(text)
  counter = Hash.new(0)
  text.chars.each do |char|
    counter[char] += 1
  end
  sorted_hash = counter.sort_by { |k, v| v }
  sorted_hash.reject! { |key, value| key.strip.empty? }
  highest_value = sorted_hash.last[0]
end

puts get_most_common_letter("the roof, the roof, the roof is on fire!")

# Intended output:
# 
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"

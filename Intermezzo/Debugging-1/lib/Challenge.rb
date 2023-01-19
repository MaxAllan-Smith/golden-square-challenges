def get_most_common_letter(text)
  counter = Hash.new(0)
  text.chars.each do |char|
    counter[char] += 1
  end
  sorted_hash = counter.sort_by { |k, v| v }#[0][0]
  sorted_hash.reject! { |k, v| k.strip.empty? }
  highest_value = sorted_hash.to_a.last[0]
  p highest_value
end

# Intended output:
# 
puts get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"

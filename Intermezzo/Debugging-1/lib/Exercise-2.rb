def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  # p cipher.sort!
  ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char).to_i).chr
  end
  return ciphertext_chars.join
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  # p cipher.sort!
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[(65 - char.ord).abs]
  end
  return plaintext_chars.join
end




p encode("theswiftfoxjumpedoverthelazydog", "secretkey")
p decode("EMBAXNKEKSYOVQTBJSWBDEMBPHAGJSL", "secretkey")


# Intended output:
#
# > encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
#
# > decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
# => "theswiftfoxjumpedoverthelazydog"
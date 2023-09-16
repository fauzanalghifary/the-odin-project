def caesar_cipher(string, shift)
  alphabet = Array('a'..'z')
  encrypter = Hash[alphabet.zip(alphabet.rotate(shift))]
  string.chars.map { |c| encrypter.fetch(c, "") }
end

puts caesar_cipher("What a string!", 5)
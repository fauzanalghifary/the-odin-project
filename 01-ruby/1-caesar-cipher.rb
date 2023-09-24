def caesar_cipher(string, shift)
  alphabet = Array('a'..'z')
  encrypt = Hash[alphabet.zip(alphabet.rotate(shift))]
  array_chipper = string.chars.map do |c|
    if c == c.upcase && alphabet.include?(c.downcase)
      encrypt.fetch(c.downcase, " ").upcase
    elsif c == c.downcase && alphabet.include?(c)
      encrypt.fetch(c, " ")
    else
      c
    end
  end
  array_chipper.join
end

print caesar_cipher("What a string!", 5)
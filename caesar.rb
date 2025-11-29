def caesar_cipher(string, shift = 0)
  char_arr = string.split("")
  result = char_arr.collect do |char|
    if char.between?("a", "z")
      convert_char = (char.ord - "a".ord + shift) % 26 + "a".ord 
    elsif char.between?("A", "Z")
      convert_char = (char.ord - "A".ord + shift) % 26 + "A".ord
    else
      next char
    end
    convert_char.chr
  end
  puts result.join("")
end

caesar_cipher("AA! aa. BB? bb, \"CC\"cc", 4)
caesar_cipher("AAbbCC", -33)
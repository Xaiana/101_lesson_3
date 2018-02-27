def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.length == 4

  while  dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end
   true
end

def is_an_ip_number?(input_string)
  (0..255).include?(input_string.to_i) # does not check for non-numeric input
end

puts dot_separated_ip_address? "h.e.l"

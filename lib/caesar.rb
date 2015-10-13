
def caesar_encode(message, offset)
  lowercase_range = ("a".."z").to_a
  uppercase_range = ("A".."Z").to_a
  split_message = message.split("")
  split_message = split_message.map do |letter|
    if lowercase_range.include?(letter)
      letter = lowercase_range.rotate(offset)[lowercase_range.index(letter)]
    elsif
      uppercase_range.include?(letter)
      letter = uppercase_range.rotate(offset)[uppercase_range.index(letter)]
    else
      letter = letter
    end
  end
split_message.join("")
end

def caesar_decode(message, offset)
  lowercase_range = ("a".."z").to_a
  uppercase_range = ("A".."Z").to_a
  split_message = message.split("")
  split_message = split_message.map do |letter|
    if lowercase_range.include?(letter)
      letter = lowercase_range.rotate(-offset)[lowercase_range.index(letter)]
    elsif
      uppercase_range.include?(letter)
      letter = uppercase_range.rotate(-offset)[uppercase_range.index(letter)]
    else
      letter = letter
    end
  end
  split_message.join("")
end

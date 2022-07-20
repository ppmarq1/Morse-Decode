@morse_dictionary = {
  'a' => '.-',
  'b' => '-...',
  'c' => '-.-.',
  'd' => '-..',
  'e' => '.',
  'f' => '..-.',
  'g' => '--.',
  'h' => '....',
  'i' => '..',
  'j' => '.---',
  'k' => '-.-',
  'l' => '.-..',
  'm' => '--',
  'n' => '-.',
  'o' => '---',
  'p' => '.--.',
  'q' => '--.-',
  'r' => '.-.',
  's' => '...',
  't' => '-',
  'u' => '..-',
  'v' => '...-',
  'w' => '.--',
  'x' => '-..-',
  'y' => '-.--',
  'z' => '--..',
  ' ' => ' ',
  '1' => '.----',
  '2' => '..---',
  '3' => '...--',
  '4' => '....-',
  '5' => '.....',
  '6' => '-....',
  '7' => '--...',
  '8' => '---..',
  '9' => '----.',
  '0' => '-----'
}

def decode_char(char)
  @current_morse_char = @morse_dictionary.invert[char]
  @current_morse_char.upcase
end

def decode_word(word)
  @entire_word = ''
  @chars = word.split
  @chars.each do |char|
    @entire_word += decode_char(char)
  end
  print @entire_word.to_s
end

def decode_sentence(sentence)
  @entire_sentence = sentence.split
  @entire_sentence.each do |message|
    decode_word(message)
  end
end

decode_sentence('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')

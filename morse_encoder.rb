class MorseEncoder
  @@morse_code_dictionary = {
    'A' => '.-',
    'B' => '-...',
    'C' => '-.-.',
    'D' => '-..',
    'E' => '.',
    'F' => '..-.',
    'G' => '--.',
    'H' => '....',
    'I' => '..',
    'J' => '.---',
    'K' => '-.-',
    'L' => '.-..',
    'M' => '--',
    'N' => '-.',
    'O' => '---',
    'P' => '.--.',
    'Q' => '--.-',
    'R' => '.-.',
    'S' => '...',
    'T' => '-',
    'U' => '..-',
    'V' => '...-',
    'W' => '.--',
    'X' => '-..-',
    'Y' => '-.--',
    'Z' => '--..',
    '0' => '-----',
    '1' => '.----',
    '2' => '..---',
    '3' => '...--',
    '4' => '....-',
    '5' => '.....',
    '6' => '-....',
    '7' => '--...',
    '8' => '---..',
    '9' => '----.',
    '-' => '-....-',
    '@' => '.--.-.',
    '.' => '.-.-.-',
    ',' => '--..--'
  }

  def encode_char(char)
    @@morse_code_dictionary[char]
  end

  def encode_word(word)
    word.split('').map { |char| encode_char(char) }.join(' ')
  end

  def encode(sentence)
    sentence.upcase.split(' ').map { |word| encode_word(word) }.join('   ')
  end
end

encoder = MorseEncoder.new

puts 'Enter Sentence'
morse = gets.chomp
puts encoder.encode(morse)

class Plugboard
  PLUGBOARD = "PO ML IU KJ NH YT GB VF RE DC".freeze

  def initialize
    @mappings = {}
    mapping(PLUGBOARD)
  end

  def set(letter_a, letter_b)
    letter_a = letter_a.downcase
    letter_b = letter_b.downcase
    @mappings[letter_a] = letter_b
    @mappings[letter_b] = letter_a
  end

  def encipher(letter)
    @mappings[letter] || letter
  end

  def mapping(string)
    string.split(" ").each { |pair| set(pair[0], pair[1]) }
  end
end

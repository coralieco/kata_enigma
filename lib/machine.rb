require_relative 'plugboard'

class Machine
  # ALPHABET = "abcdefghijklmnopqrstuvwxyz".split("")

  def initialize
    @plugboard = Plugboard.new
    # @rotors = RotorConfiguration.new
  end

  def encipher(string)
    string.downcase.split("").map { |letter| process(letter) }.join("")
  end

  def process(letter)
    @plugboard.encipher(letter)
  end
end

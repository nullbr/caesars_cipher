class CaesarCipher
  def initialize
    @ciphered = []
  end

  def caesar_cipher(string, shift)
    string = string.split('')
    string.each do |character|
      character = character.ord
      @ciphered << if character.between?(65, 90)
                     wrap_upcase(character + shift).chr
                   elsif character.between?(97, 122)
                     wrap_downcase(character + shift).chr
                   end
    end
    @ciphered.join
  end

  # Wrap upcase character from Z to A if needed
  def wrap_upcase(shifted_char)
    shifted_char > 90 ? shifted_char - 90 + 64 : shifted_char
  end

  # Wrap downcase character from z to a if needed
  def wrap_downcase(shifted_char)
    shifted_char > 122 ? shifted_char - 122 + 96 : shifted_char
  end
end

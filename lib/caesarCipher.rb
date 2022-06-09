class CaesarCipher
  def initialize
    @ciphered = []
  end

  def caesar_cipher(string, shift)
    string = string.split('')
    string.each do |character|
      # Wrap upcase character from Z to A if needed
      if character.ord >= 65 && character.ord <= 90
        cipher_num = character.ord + shift
        cipher_num = cipher_num - 90 + 64 if cipher_num > 90
      # Wrap downcase character from z to a if needed
      elsif character.ord >= 97 && character.ord <= 122
        cipher_num = character.ord + shift
        cipher_num = cipher_num - 122 + 96 if cipher_num > 122
      else
        cipher_num = character.ord
      end
      @ciphered << cipher_num.chr
    end
    @ciphered.join
  end
end

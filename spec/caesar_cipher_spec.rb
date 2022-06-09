require './lib/caesarCipher'

RSpec.describe CaesarCipher do
  describe '#caesar_cipher' do
    it 'encrypts the word "Hello" by 5 shifts' do
      expect(subject.caesar_cipher('Hello', 5)).to eq('Mjqqt')
    end

    it 'wraps the letter around the alphabet' do
      expect(subject.caesar_cipher('w', 5)).to eq('b')
    end
  end
end

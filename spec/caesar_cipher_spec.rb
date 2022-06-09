require './lib/caesarCipher'

RSpec.describe CaesarCipher do
  describe '#caesar_cipher' do
    it 'encrypts the word "Hello" by 5 shifts' do
      expect(subject.caesar_cipher('Hello', 5)).to eq('Mjqqt')
    end

    it 'wraps upcase letter around the alphabet' do
      expect(subject.wrap_upcase(91)).to eq(65)
    end

    it 'wraps the letter around the alphabet' do
      expect(subject.wrap_downcase(123)).to eq(97)
    end
  end
end

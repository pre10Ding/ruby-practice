#spec/caesar_cipher_spec.rb

require './caesar-cipher'
describe CaesarCipher do
  describe "#caesar_cipher" do
    it "Returns the cipher of a all lower case string" do
      cipher = CaesarCipher.new
      expect(cipher.caesar_cipher('hello', 5)).to eq('mjqqt')
    end

    it "Returns the cipher of a mixed case string" do
      cipher = CaesarCipher.new
      expect(cipher.caesar_cipher('Hello', 7)).to eq('Olssv')
    end

    it "Returns the cipher of a string with non alphabets" do
      cipher = CaesarCipher.new
      expect(cipher.caesar_cipher('Hello world!', 7)).to eq('Olssv dvysk!')
    end

    it "Returns the cipher of a string where the shift is more than 26" do
      cipher = CaesarCipher.new
      expect(cipher.caesar_cipher('Hello world!', 43)).to eq('Yvccf nficu!')
    end

    it "Returns the cipher of a string where the shift negative" do
      cipher = CaesarCipher.new
      expect(cipher.caesar_cipher('Hello world!', -7)).to eq('Axeeh phkew!')
    end
  end
end

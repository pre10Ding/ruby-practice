class CaesarCipher
    def initialize; end
    def caesar_cipher(phrase,shift) 
        p phrase
        arr = phrase.split("").map do |char| 
            code = char.ord
            if code.between?(65,90) 
                code = wrap_char(code+shift, 65)
            end
                
            if code.between?(97,122)
                code = wrap_char(code+shift, 97)                
            end
            code.chr
        end
        arr.join

    end

    def wrap_char(code, lowest)
        (code - lowest)%26 + lowest
    end
end
# p caesar_cipher("What a string!", 5)
# p caesar_cipher("hello",5)
# p caesar_cipher("Hello",5)
# p caesar_cipher("ZAizt",10)
# p caesar_cipher("hello",-5)
# p caesar_cipher("hello qweqwe",5)
# p caesar_cipher(".hello qweqwe!!!",5)


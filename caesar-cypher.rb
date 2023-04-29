def caesar_cipher(string,key)
    string_array = string.split("")
    new_string = string_array.map do |char|
        ascii = char.ord + key

        if char.ord >= 65 && char.ord <= 90
            ascii > 90 ? ascii = 65 + ascii - 91 : ascii
        elsif char.ord >= 97 &&char.ord <= 122
            ascii > 122 ? ascii = 97 + ascii-123 : ascii
        else
            ascii = char.ord
        end
        ascii.chr
    end.join
    new_string
end

p caesar_cipher("What a string!", 5)

p " ".ord
p "!".ord
def caesar_cipher(string,key)
    string_array = string.split("")
    new_string_array = string_array.map do |char|
        ascii = char.ord + key
        ascii > 122 ? ascii = 97 + ascii-123 : ascii
        ascii.chr
    end
    p new_string_array.join
end

caesar_cipher("zebra", 3)
p "a".ord
p "z".ord
p "A".ord
p "Z".ord
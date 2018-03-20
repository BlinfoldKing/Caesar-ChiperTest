def encrypt (text, key)
    res = ''
    text.split('').each do |letter|
        k = key % 25
        if letter >= 'a' && letter <= 'z'
            if letter.ord + k > 'z'.ord
                k = letter.ord + k - 'z'.ord
                res += ('a'.ord + k).chr
            else
                res += (letter.ord + k).chr
            end
        elsif letter >= 'A' && letter <= 'Z'
            if letter.ord + k > 'Z'.ord
                k = letter.ord + k - 'Z'.ord
                res += ('A'.ord + k).chr
            else
                res += (letter.ord + k).chr
            end
        else
            res += letter
        end
    end
    return res
end

puts 'input text to encrypt : '
text = gets
puts 'input key : '
key = gets.to_i
puts encrypt(text, key)
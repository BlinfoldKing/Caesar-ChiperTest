def encrypt (text, key):
    
    res = []
    for letter in text:
        k = key % 25
        if letter >= 'a' and letter <= 'z':
            if ord(letter) + key > 122:
                k = ord(letter) + k - 122
                res.append(chr(97 + k))
            else:
                res.append(chr(ord(letter) + k))
        elif letter >= 'A' and letter <= 'Z':
            if ord(letter) + key > 90:
                k = ord(letter) + k - 90
                res.append(chr(65 + k))
            else:
                res.append(chr(ord(letter) + k))
        else:
            res.append(letter)
    return ''.join(res)

if __name__ == "__main__":
    text = input('input text to encrypt : ')
    key = int(input('input the key : '))

    print ('result : ' + encrypt(text, key))
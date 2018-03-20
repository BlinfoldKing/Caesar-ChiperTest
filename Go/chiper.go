package main

import "fmt"

func encrypt(text string, key int) string {
	res := ""

	for _, letter := range text {
		var k = key % 25
		if (letter >= 97 && letter <= 122) {
			if (int(letter) + k > 122) {
				k = int(letter) + k - 122
				res += string(97 + k)
			} else {
				res +=  string(int(letter) + k) 
			}
		} else if (letter >= 65 && letter <= 90) {
			if (int(letter) + k > 90) {
				k = int(letter) + k - 90
				res += string(65 + k)
			} else {
				res +=  string(int(letter) + k) 
			}
		} else {
			res += string(letter)
		}
	}

	return res
}

func main() {
	var text string = ""
	fmt.Scanln(&text)
	var key int = 0
	fmt.Scanln(&key)
	fmt.Println(encrypt(text, key))
}

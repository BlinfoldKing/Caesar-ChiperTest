const text = 'Hello World' // <--- change this
const key = 5

let res = ''

for (let letter of text) {
  let k = key % 25
  if (letter >= 'a' && letter <= 'z')
    if (letter.charCodeAt(0) + k > 122) {
      k = (letter.charCodeAt(0) + k) - 122
      res += String.fromCharCode(97 + k)
    } else {
      res += String.fromCharCode(letter.charCodeAt(0) + k)
    }
  else if (letter >= 'A' && letter <= 'Z')
    if (letter.charCodeAt(0) + k > 90) {
      k = (letter.charCodeAt(0) + k) - 90
      res += String.fromCharCode(65 + k)
    } else {
      res += String.fromCharCode(letter.charCodeAt(0) + k)
    }
  else res += letter
}

console.log(res)
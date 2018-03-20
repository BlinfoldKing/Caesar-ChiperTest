#include <iostream>
#include <string>

using namespace std;

 string encrypt(string str, int key) {
   string res;

   key %= 25;

   for (int i = 0; i < str.length(); i++) {
     char c = str[i];
     int k = key;
     if (str[i] >= 'a' && str[i] <= 'z') {
       if (int(str[i]) + k > int('z')) {
          k = (int(str[i] + k)) - int('z');
          c = char(int('a') + k);
       } else {
         c = int(str[i]) + k;
       }

     } else if (str[i] >= 'A' && str[i] <= 'Z') {
       if (int(str[i]) + k > int('Z')) {
          k = (int(str[i] + k)) - int('Z');
          c = char(int('A') + k);
       } else {
         c = int(str[i]) + k;
       }

     }

     res.push_back(c);
   }

   return res;
 }

int main() {

  string text;
  int key;
  cout << "enter text to be encrypt : ";
  cin >> text;
  cout << "enter the key : ";
  cin >> key;


  cout << encrypt(text, key);
  cout << '\n';
  return 0;;
}

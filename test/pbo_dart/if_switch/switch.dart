import 'dart:io';

void main() {
  int number= int.parse(stdin.readLineSync()!);
  String output;

  switch(number){
    case 0: print("value angka 0");
    break;
    case 2: print("value angka 2");
    break;
    case 3: print("value angka 3");
    break;
    
    default: print("angka di luar ketentuan");

  }
}
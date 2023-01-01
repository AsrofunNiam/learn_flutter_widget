import 'dart:io';

void main() {
  int number= int.parse(stdin.readLineSync()!);
  String output;

  // if(number > 0){
  //   print("test one ");
  //   print(output="In lebih dari nol");

  // } else if (number < 0){
  //   print("test 2");
  //   print(output="value kurang dari nol");
  // } else{
  //   print("di luar semua");
  //   print(output="bilangan di luar ");
  // }
  output =((number > 0) ? "angka 1 lebih dari 0" : "angka  1 di kurang dari 0");
  print(output);
  print((number > 0)?"angka 2 lebih dari 0" : "angka 2 di kurang dari 0");

  print(number.hashCode);
}
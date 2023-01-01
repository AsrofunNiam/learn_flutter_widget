void main() {
  int? number1 = 2, number2 = 2;

  while (number1! <= 8) {
    print(" Angka 1 ke ${number1}");
    number1++;
  }

  do {
    print("Angka 2 ke ${number2}");
    number2 = number2! + 1;
  } while (number2 <= 8);

  //  Get value ++ 

  int number3 = 2;

  do {
    print("Angka 3 ke ${number3}");
    number3++;
  } while (number3 <= 8);
}

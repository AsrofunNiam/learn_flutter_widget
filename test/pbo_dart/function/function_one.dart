import 'dart:io';

double? luas_segitiga(double panjang, double lebar) {
  double? total;

  total = panjang * lebar;

  return total;
}



void main() {
  double? p, l;

  p = double.tryParse(stdin.readLineSync()!);
  l = double.tryParse(stdin.readLineSync()!);

  print(luas_segitiga(p!, l!));

}

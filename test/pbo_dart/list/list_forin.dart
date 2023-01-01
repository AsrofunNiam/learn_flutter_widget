import 'dart:ffi';

import 'list_one.dart';

void main() {
  // List<int> myList=[
  //   1,2,3
  // ];

  // List<String> myListNamed =[
  //   "Doni",
  //   "Budi",
  //   "Salma"
  // ];

  // for (int index=0; index < myList.length; index++){
  //   print(myList[index]);
  // }

  // for (int index2 =1; index2 < myListNamed.length; index2++){
  //   print(myListNamed[index2]);
  // }

  // for(String printName in myListNamed){
  //   print(printName);
  // }

  ListData callList = ListData();

  for (int printNumber in callList.myList) {
    print(printNumber);
  }

  for (String printName in callList.myListNamed) {
    print(printName);
  }
}

class ListData {
  String? name, nopol;

  List<int> myList = [1, 2, 3];

  List<String> myListNamed = ["Doni", "Budi", "Salma"];
}

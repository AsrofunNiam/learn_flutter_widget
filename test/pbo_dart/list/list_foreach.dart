void main() {
  // int data;
  ListData callList = ListData();

  // data= callList.isEvenOdd(1);

  // callList.list.forEach((n) => {
  //   print(callList.isEvenOdd(n).toString()))
  //   // print("${callList.isEvenOdd(n)}")
  //   // callList.isEvenOdd(n)
  //   });

    callList.list.forEach((element) {
      print(callList.isEvenOdd(element));
    });

//  call forEach

  callList.myList.forEach((printNumber) {
    print(printNumber);
  });

  callList.myListNamed.forEach((printNamed) {
    print(printNamed);
  });
  
}

class ListData {
  String? name, nopol;
  int? data;

  List<int> list = [2, 5, 7, 16, 32];
  List<int> myList = [1, 2, 3];

  List<String> myListNamed = ["Doni", "Budi", "Salma", "Budiman ", "Sujatmiko"];

   isEvenOdd(int n) {
    data=n;
    if (n % 2 == 0) {
      print('$n nomor genap.');
    } else {
      print('$n nomor ganjil');
    }
  }
}

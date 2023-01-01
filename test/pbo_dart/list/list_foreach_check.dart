void main() {
  ListData callList = ListData();
  int? data2 = callList.dataList;

  // check condition move in function ListData().isEvenOdd()
  callList.list.forEach((element) {
    return callList.isEvenOdd(element);
    // print("ini data "+ callList.isEvenOdd(element));
    // callList.list.map((e) => "Data"+ e.toString());
  });

  callList.list.map((e) => " ini map angka ke : " + e.toString());

  callList.myList.forEach((printNumber) {
    print(printNumber);
  });

  callList.myListNamed.forEach((printNamed) {
    print(printNamed);
  });
}

class ListData {
  String? name, nopol;
  int? dataList;

  List<int> list = [2, 5, 7, 16, 32];
  List<int> myList = [1, 2, 3];

  List<String> myListNamed = ["Doni", "Budi", "Salma", "Budiman ", "Sujatmiko"];

  isEvenOdd(int dataList) {
    // dataList=n;
    if (dataList % 2 == 0) {
      print('$dataList nomor genap.');
    } else {
      print('$dataList nomor ganjil');
    }
  }
}

void main() {
  int nilaiA, nilaiB;
  ListData callList = ListData();

//  CRUD List at main
  callList.addMyListNumber.add(10);
  callList.addMyListNumber.addAll(callList.myListNumber);
  callList.addMyListNumber.insert(2, 40);
  callList.addMyListNumber.insertAll(2, callList.myListNumber2);
  callList.addMyListNumber.insertAll(2, [75, 85, 95]);
  callList.addMyListNumber.removeAt(0);
  callList.addMyListNumber.removeRange(2, 5);
  callList.addMyListNumber.removeWhere((removeNumber) => removeNumber % 2 != 0);
  if (callList.addMyListNumber.contains(100)) {
    print("number telah di hapus");
    callList.addMyListNumber.remove(100);
  } else {
    print("nomor tidak tersedia");
  }

  callList.addMyListNumber.sort();

  //  example value b=2 and value a = 40 => b-a = -38  => value small on the side right
  // callList.addMyListNumber.sort(((a, b) => a-b));

  //  call value A and B to compair
  callList.addMyListNumber.sort(((a, b) {
    return a - b;
    
    // ignore: dead_code
    if (callList.addMyListNumber.contains(a)) {
      print("nilai A ${a}");
    } else if (callList.addMyListNumber.contains(b)) {
      print("nilai B ${b}");
    }
  }));

//  call ad ForEach
  callList.addMyListNumber.forEach((printNumber) {
    print(printNumber);
  });

  callList.addMyListName.forEach((printNamed) {
    print(printNamed);
  });
}

class ListData {
  List<int> addMyListNumber = [];
  List<String> addMyListName = [];

  List<int> myListNumber = [1, 2, 3];
  List<int> myListNumber2 = [80, 90, 100];

  List<String> myListNamed = ["Doni", "Budi", "Salma", "Budiman ", "Sujatmiko"];
}

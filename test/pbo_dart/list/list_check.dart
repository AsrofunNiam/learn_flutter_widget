void main() {
  int nilaiA = 9, nilaiB;
  ListData callList = ListData();

//  Check List at main
  callList.addMyListNumber.insertAll(1, callList.myListNumber);
  if (callList.addMyListNumber.contains(nilaiA)) {
    print("number ${nilaiA} telah di hapus");
    callList.addMyListNumber.remove(nilaiA);
  } else {
    print("nomor ${nilaiA} tidak tersedia");
  }

  callList.addMyListNumber.sort();

  //  example value b=2 and value a = 40 => b-a = -38  => value small on the side right
  // callList.addMyListNumber.sort(((a, b) => a - b));

  //  call value A and B to compair
  callList.addMyListNumber.sort(((a, b) {
    return b - a;

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
  List<int> addMyListNumber = [1, 2];
  List<String> addMyListName = [];

  List<int> myListNumber = [3, 4, 5, 6, 7];
  List<int> myListNumber2 = [80, 90, 100];

  List<String> myListNamed = ["Doni", "Budi", "Salma", "Budiman ", "Sujatmiko"];
}

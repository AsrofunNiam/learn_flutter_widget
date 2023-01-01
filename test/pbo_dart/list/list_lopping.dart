void main() {
  
  ListData callList =ListData();

  //  foEach return type data List
  callList.addMyListNumber.forEach((loppNumber) {
    callList.addMyListName.add("nama ke :" + loppNumber.toString());
  });

  callList.addMyListName.forEach((element) {
    print(element);
  });

  //  map return type data Iterable => convert to type data List 
  callList.addMyListName.map((e) => " ini map angka ke : "+ e.toString());

  callList.addMyListNumber.forEach((element) {
    print(element);
  });

  
}


class ListData {
  List<int> addMyListNumber = [1, 2,3,4,5];
  List<String> addMyListName = [];

  List<int> myListNumber = [3, 4, 5, 6, 7];
  List<int> myListNumber2 = [80, 90, 100];

  List<String> myListNamed = ["Doni", "Budi", "Salma", "Budiman ", "Sujatmiko"];
}
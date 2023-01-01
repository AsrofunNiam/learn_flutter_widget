void main() {
  String name, name2;

  iniData test = iniData();

//  original value myList
  name = test.myList[1];

  //  call and edit value myList [1]
  test.myList[1] = "cewek";

  name2 = test.myList[1];

  print(name);
  print(name2);
}

class iniData {
  List<String> myList = ["NIam", "Doni", "salmanan", "Budi"];
}

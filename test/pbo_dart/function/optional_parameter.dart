void main() {
  print(sayHello("Budi  ", "  ke pasar  ",sendTo: "  mobil  "));
  print(sayHello2("Budi  ", "  ke pasar  ",sendTo: "  mobil  "));
  
}

// optional param & name param
String sayHello(String name, String messege, {String? to, String? sendTo}){
  return name + "pergi" + messege + ((to !=null)?"tadi " + to : "pagi  ")+ ((sendTo != null) ? "mengunakan  " + sendTo: "");

}

// potitional parametter
String sayHello2(String name, String messege, {String? to, String? sendTo}){
  return name + "pergi" + messege + ((to !=null)?"tadi " + to : "pagi  ")+ ((sendTo != null) ? "mengunakan  " + sendTo: "");

}


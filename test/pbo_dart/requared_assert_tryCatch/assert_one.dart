import 'package:flutter/cupertino.dart';

void main() {
  Person x = Person(name: "test");

  print(x.age);
  print(x.name);
}

class Person {
  final String? name;
  final int age;

  Person({
    @required this.name,
    this.age = 0,
  }){
    assert (name!= null, " input value not null");
  }
}

import 'package:flutter/material.dart';

class ViewTextField1 extends StatefulWidget {
  String name= 'Budi';
  //  ViewTextField1({Key? key}) : super(key: key);
  

  @override
  State<ViewTextField1> createState() => _ViewTextField1State();
}

class _ViewTextField1State extends State<ViewTextField1> {
  // String name= 'Budi';

  TextEditingController data= TextEditingController(text: "Ridho ");
  
  // static get name => ViewTextField1();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title:  Text(" TextField "),
    ),
    body: Column(children: [
      TextField(
        controller: data,
      )
    ]),
    );
  }
}

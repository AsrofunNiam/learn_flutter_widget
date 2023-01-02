import 'package:flutter/material.dart';

class ViewCardTwo extends StatelessWidget {
  const ViewCardTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Card")),
      body: Center(
          child: Container(
            height: 100,
            width: 100,
            child: Card(
        elevation: 100,
        shadowColor: const Color.fromARGB(255, 224, 35, 35),
        color: const Color.fromARGB(255, 145, 229, 247),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              CircleAvatar(
                backgroundColor: Color.fromARGB(255, 41, 132, 217),
                radius: 108,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/image/koala.jpg"),
                  radius: 100,
                ),
              ),
              Text(
                'Koala',
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 42, 54, 43),
                  fontWeight: FontWeight.w500,
                ), //Textstyle
              ),
            ],
        ),
      ),
          )),
    );
  }
}

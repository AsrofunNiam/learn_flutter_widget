import 'package:flutter/material.dart';

class HomePAge extends StatelessWidget {
  const HomePAge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu Main"),
        centerTitle: true,
      ),

      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100,
                            width: 100,
                            // ignore: prefer_const_constructors
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.blue),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100,
                            width: 100,
                            // ignore: prefer_const_constructors
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.blue),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100,
                            width: 100,
                            // ignore: prefer_const_constructors
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.blue),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100,
                            width: 100,
                            // ignore: prefer_const_constructors
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.blue),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            // child: Text("test 1"),
                            height: 100,
                            width: 100,
                            // ignore: prefer_const_constructors
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    color: Colors.amber,
                    height: 400,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: <Widget>[
                        Container(
                          width: 50,
                          height: 100,
                          color: Colors.blue,
                        ),
                        Container(
                          width: 50,
                          height: 100,
                          color: Color.fromARGB(255, 58, 206, 0),
                        ),
                        Container(
                          width: 50,
                          height: 100,
                          color: Color.fromARGB(255, 243, 205, 33),
                        ),
                        Container(
                          width: 50,
                          height: 100,
                          color: Color.fromARGB(255, 221, 0, 173),
                        ),
                        Container(
                          width: 50,
                          height: 100,
                          color: Color.fromARGB(255, 243, 58, 33),
                        ),
                      ],
                    ),

                  ),
                  const SizedBox(height: 10,),
                  Container(
                    height: 300,
                    color: Color.fromARGB(255, 253, 253, 253),
                    child: GridView.count(
                      scrollDirection: Axis.horizontal,
                      crossAxisCount: 2,
                      children: [
                        Container(
                          color: Color.fromARGB(255, 187, 214, 31),
                          height: 10,
                          width: 10,
                        ),
                        // SizedBox(width: 5,),
                        Container(
                          color: Color.fromARGB(255, 199, 38, 38),
                          height: 10,
                          width: 10,
                        ),
                        Container(
                          color: Color.fromARGB(255, 140, 218, 137),
                          height: 10,
                          width: 10,
                        ),
                        Container(
                          color: Color.fromARGB(255, 185, 27, 27),
                          height: 10,
                          width: 10,
                        ),
                        Container(
                          color: Color.fromARGB(255, 119, 163, 89),
                          height: 100,
                          width: 10,
                        ),
                        Container(
                          color: Color.fromARGB(255, 94, 82, 204),
                          height: 20,
                          width: 20,
                        ),
                        Container(
                          color: Color.fromARGB(255, 40, 40, 43),
                          height: 20,
                          width: 20,
                        ),
                        Container(
                          color: Color.fromARGB(255, 141, 141, 145),
                          height: 20,
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                 const SizedBox(height: 10,),
                  Container(
                    height: 100,
                    color: Color.fromARGB(255, 110, 129, 241),
                  ),
                ],
              ))),
      
    );
  }
}

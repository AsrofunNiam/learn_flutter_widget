import 'package:flutter/material.dart';

class ViewExpandedOne extends StatelessWidget {
  const ViewExpandedOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Expanded one ")),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    color: Colors.blue,
                    child: const Center(child: Text("E1")),
                  )),
                  Expanded(
                      child: Container(
                    color: const Color.fromARGB(255, 118, 179, 229),
                    child: const Center(child: Text("E2")),
                  )),
                  Expanded(
                      child: Container(
                    color: const Color.fromARGB(255, 196, 218, 237),
                    child: const Center(child: Text("E3")),
                  )),
                ],
              )),
          Expanded(
              child: Container(
            color: Colors.red,
          )),
          Expanded(
              child: Container(
            child: Column(children: [
              Expanded(
                  child: Container(
                color: const Color.fromARGB(255, 157, 249, 143),
                child: const Center(child: Text("X1")),
              )),
              Expanded(
                  child: Container(
                color: const Color.fromARGB(255, 80, 234, 63),
                child: const Center(child: Text("X1")),
              )),
              Expanded(
                  child: Container(
                color: const Color.fromARGB(255, 32, 132, 5),
                child: const Center(child: Text("X1")),
              )),
            ]),
            color: Colors.green,
          )),
        ],
      ),
    );
  }
}

// Expanded => defaul flexible dengan properti fit: Flexfit Tigh 

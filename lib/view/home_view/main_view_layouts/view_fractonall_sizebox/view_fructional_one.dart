import 'package:flutter/material.dart';

class ViewFructionall extends StatelessWidget {
  const ViewFructionall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fructionall one "),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 300,
            color: Colors.red,
            child: FractionallySizedBox(
              alignment: Alignment.bottomRight,
              heightFactor: 0.8,
              widthFactor: 0.9,
              child: Container(
                height: 40,
                width: 50,
                color: Colors.blue,
                child: const Center(child: Text("Test one")),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            height: 100,
            width: 300,
            color: const Color.fromARGB(255, 54, 152, 244),
            child: FractionallySizedBox(
              alignment: Alignment.bottomLeft,
              heightFactor: 0.8,
              widthFactor: 0.5,
              child: Container(
                height: 40,
                width: 50,
                color: const Color.fromARGB(255, 33, 243, 65),
                child: const Center(child: Text("Test one")),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            height: 100,
            width: 300,
            color: const Color.fromARGB(255, 54, 152, 244),
            child: FractionallySizedBox(
              heightFactor: 0.9,
              widthFactor: 0.5,
              child: Container(
                height: 40,
                width: 50,
                color: const Color.fromARGB(255, 33, 243, 65),
                child: const Center(child: Text("Test one")),
              ),
            ),
          ),
        ],
      )),
    );
  }
}

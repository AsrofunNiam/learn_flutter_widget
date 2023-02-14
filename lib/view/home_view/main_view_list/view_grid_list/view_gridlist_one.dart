import 'package:flutter/material.dart';

class ViewGridlistOne extends StatelessWidget {
  const ViewGridlistOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Grid List one ")),
        ),
        body: GridView.count(
          crossAxisCount: 4,
          children: List.generate(100, (index) {
            if (index < 50) {
              return Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red),
                ),
                padding: const EdgeInsets.all(30.0),
                child: Text(
                  "Test ${index.toString()}",
                  style: const TextStyle(fontSize: 15),
                ),
              );
            } else {
              return Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                ),
                padding: const EdgeInsets.all(30.0),
                child: Text(
                  "Test ${index.toString()}",
                  style: const TextStyle(fontSize: 15),
                ),
              );
            }
          }),
        ));
  }
}

import 'package:flutter/material.dart';

class ViewSizeboxOne extends StatelessWidget {
  const ViewSizeboxOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Sizebox one ")),
      ),
      body: Column(
        children: [
          Expanded(child: Container(
            color: Colors.red,
          )),
          Expanded(child: Container(
            color: Colors.blue,
          )),
          Expanded(child: Container(
            color: Colors.green,
          )),
        ],
      ),
      
    );
  }
}

import 'package:flutter/material.dart';

class ViewRowOne extends StatelessWidget {
  const ViewRowOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flexible one "),
      ),
      body: Center(child: Container()),
      
    );
  }
}

import 'package:flutter/material.dart';

class ViewWrapOne extends StatelessWidget {
  const ViewWrapOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wrap one "),
      ),
      body: Center(child: Container()),
      
    );
  }
}

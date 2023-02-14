import 'package:flutter/material.dart';

class ChangeProfileOne extends StatelessWidget {
  const ChangeProfileOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Change Profile One")),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[],
        ));
  }
}

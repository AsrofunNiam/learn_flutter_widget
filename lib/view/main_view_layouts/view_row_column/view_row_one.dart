import 'package:flutter/material.dart';

class ViewRowOne extends StatelessWidget {
  const ViewRowOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Column one "),
        ),
        body: ListView(
          // padding: const EdgeInsets.all(8),
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              // height: 50,
              width: 300,
              color: Colors.amber[600],
              child: const Center(child: Text('Entry A')),
            ),
            Container(
              width: 300,
              color: Colors.amber[500],
              child: const Center(child: Text('Entry B')),
            ),
            Container(
              width: 300,
              color: Colors.amber[100],
              child: const Center(child: Text('Entry C')),
            ),
          ],
        ));
  }
}

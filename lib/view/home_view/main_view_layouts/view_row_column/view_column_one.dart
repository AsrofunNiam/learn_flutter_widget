import 'package:flutter/material.dart';

class ViewColumnOne extends StatelessWidget {
  const ViewColumnOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Column one "),
      ),
      body: SizedBox(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 300,
                  width: 500,
                  color: const Color.fromARGB(255, 248, 193, 189),
                ),
                Container(
                  height: 100,
                  width: 200,
                  color: const Color.fromARGB(255, 231, 102, 93),
                ),
                Container(
                  height: 100,
                  width: 200,
                  color: const Color.fromARGB(255, 190, 44, 34),
                ),
                Container(
                  height: 100,
                  width: 200,
                  color: const Color.fromARGB(255, 129, 12, 4),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

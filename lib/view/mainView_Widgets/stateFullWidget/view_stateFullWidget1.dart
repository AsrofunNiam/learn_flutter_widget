import 'package:flutter/material.dart';

class ViewStatefullWidget1 extends StatefulWidget {
  const ViewStatefullWidget1({Key? key}) : super(key: key);

  @override
  State<ViewStatefullWidget1> createState() => _ViewStatefullWidget1State();
}

class _ViewStatefullWidget1State extends State<ViewStatefullWidget1> {
  late int _counter = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              _counter.toString(),
              style: const TextStyle(fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  heroTag: null,
                  onPressed: () {
                    setState(() {
                      _counter++;
                    });
                    print(_counter);
                  },
                  child: const Icon(Icons.add),
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      _counter--;
                    });
                  },
                  child: const Icon(Icons.remove),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

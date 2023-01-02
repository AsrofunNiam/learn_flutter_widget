import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class ViewStackOne extends StatelessWidget {
  ViewStackOne({Key? key}) : super(key: key);
  final ButtonStyle style =
      ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

  // tumpukan widget => stack

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("View Stack"),
      ),
      body: Stack(children: [
        Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Flexible(
                flex: 1,
                child: Row(
                  children: [
                    Flexible(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          color: Colors.red,
                        )),
                    Flexible(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          color: const Color.fromARGB(255, 228, 134, 127),
                        )),
                  ],
                )),
            Flexible(
                flex: 1,
                child: Row(
                  children: [
                    Flexible(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          color: const Color.fromARGB(255, 254, 153, 146),
                        )),
                    Flexible(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          color: const Color.fromARGB(255, 112, 18, 11),
                        )),
                  ],
                ))
          ],
        ),
        Column(
          children: [
            Flexible(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.all(20),
                  child: Text(lorem(paragraphs: 4, words: 400)),
                )),
          ],
        ),
        Align(
          alignment: Alignment.center,
          child: ElevatedButton(
            style: style,
            onPressed: () {},
            child: const Text('Enabled'),
          ),
        ),
      ]),
    );
  }
}

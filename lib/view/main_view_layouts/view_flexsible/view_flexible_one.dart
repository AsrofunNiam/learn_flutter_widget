import 'package:flutter/material.dart';

class ViewFlexibleOne extends StatelessWidget {
  const ViewFlexibleOne({Key? key}) : super(key: key);
  // penyesuain ukuran display HP multi serries, check lanscape device

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flexible one "),
      ),
      body: Column(
        children: <Widget>[
          Flexible(
              flex: 1,
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: const Color.fromARGB(255, 243, 167, 161),
                    ),
                  ),
                  Flexible(
                    flex: 3,
                    child: Container(
                      color: const Color.fromARGB(255, 243, 87, 76),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: const Color.fromARGB(255, 231, 33, 19),
                    ),
                  ),
                ],
              )),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.blue,
              child: Align(
                child: SizedBox(
                  height: 150,
                  width: 300,
                  child: Column(children: [
                    Flexible(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          color: const Color.fromARGB(255, 232, 206, 129),
                        )),
                    Flexible(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          color: const Color.fromARGB(255, 229, 186, 57),
                        )),
                    Flexible(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          color: const Color.fromARGB(255, 197, 150, 8),
                        )),
                  ]),
                ),
              ),
            ),
          ),
          Flexible(
              flex: 2,
              child: Container(
                color: const Color.fromARGB(255, 82, 244, 54),
              )),
          Flexible(
              flex: 1,
              child: Container(
                color: const Color.fromARGB(255, 246, 230, 84),
              )),
        ],
        // (child: Flexible(child: Container(),))
      ),
    );
  }
}

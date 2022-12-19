// ignore: file_names
import 'package:flutter/material.dart';
import 'package:learn_flutter_widget/widget/widget_Card/widgetParsingCard.dart';

class RouteCard extends StatelessWidget {
   const RouteCard({Key? key}) : super(key: key);

  get mainAxisAlignment => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WidgetParsingCard()),
                  );
                },
                child: Container(
                  height: 100,
                  width: 100,
                  // ignore: prefer_const_constructors
                  decoration:
                     const BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                  child: const Center(
                      child: Text("CARD 1", style: TextStyle(fontSize: 20))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                width: 100,
                // ignore: prefer_const_constructors
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}

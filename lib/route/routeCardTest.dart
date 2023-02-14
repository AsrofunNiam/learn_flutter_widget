// ignore: file_names
import 'package:flutter/material.dart';
import 'package:learn_flutter_widget/view/mainView_Widgets/view_card/view_card_one.dart';

class RouteCardTest extends StatelessWidget {
  const RouteCardTest({Key? key}) : super(key: key);

  get mainAxisAlignment => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(child: Text("Route Card Test 2")),
        ),
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
                    MaterialPageRoute(
                        builder: (context) => const ViewCard1()),
                  );
                },
                child: Container(
                  height: 100,
                  width: 100,
                  // ignore: prefer_const_constructors
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 241, 80, 80)),
                  child: const Center(
                      child: Text("Route 2", style: TextStyle(fontSize: 20))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                width: 100,
                // ignore: prefer_const_constructors
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color.fromARGB(255, 133, 238, 92)),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}

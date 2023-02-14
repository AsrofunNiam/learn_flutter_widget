import 'package:flutter/material.dart';
import 'package:learn_flutter_widget/view/home_view/mainView_Widgets/view_card/view_card_one.dart';

class RouteCard extends StatelessWidget {
  const RouteCard({Key? key}) : super(key: key);

  get mainAxisAlignment => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(child: Text("Route Card Test 1")),
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
                      shape: BoxShape.circle, color: Colors.blue),
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
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.blue),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:learn_flutter_widget/themes/style.dart';
import 'package:learn_flutter_widget/themes/theme.dart';

class RouteWidgets extends StatelessWidget {
  const RouteWidgets({Key? key}) : super(key: key);

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
                    MaterialPageRoute(builder: (context) => const RouteWidgets()),
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
          ]),
          StyleRoute(
              title: 'Test',
              subtitle: const Text("test"),
              starGradient: gradientBlue1,
              endGradient: gradientBlue2,
              iconLeading: const Icon(Icons.person),
              title2: "kos")
        ],
      ),
    );
  }
}

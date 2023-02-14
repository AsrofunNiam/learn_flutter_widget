import 'package:flutter/material.dart';
import 'package:learn_flutter_widget/route/routeCardTest.dart';
import 'package:learn_flutter_widget/route/routeCardTest2.dart';
import 'package:learn_flutter_widget/route/route_main.dart';

class RouteStreamBuilder extends StatelessWidget {
  const RouteStreamBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Route Future Builder")),
        ),
        body: Center(
            child: RouteMain(
          testText1: "test 1",
          testText2: "test 2",
          testText3: "test 3",
          callOne: () {
            return const RouteCardTest2();
          },
          callTwo: () {
            return const RouteCardTest2();
          },
          callThree: () {
            return const RouteCardTest();
          },
        )));
  }
}

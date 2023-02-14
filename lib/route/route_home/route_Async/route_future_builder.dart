import 'package:flutter/material.dart';
import 'package:learn_flutter_widget/route/routeCardTest2.dart';
import 'package:learn_flutter_widget/route/route_main.dart';
import 'package:learn_flutter_widget/view/home_view/mainView_Async/view_future_builder/view_future_builder1.dart';
import 'package:learn_flutter_widget/view/home_view/mainView_Async/view_future_builder/view_futurebuilder_two.dart';

class RouteFutureBuilder extends StatelessWidget {
  const RouteFutureBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Route Future Builder")),
        ),
        body: Center(
            child: RouteMain(
          testText1: "FB 1",
          testText2: "FB 2",
          testText3: "FB 3",
          callOne: () {
            return const ViewFutureBuilder1();
          },
          callTwo: () {
            return const ViewFutureBuilderTwo();
          },
          callThree: () {
            return const RouteCardTest2();
          },
        )));
  }
}

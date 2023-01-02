import 'package:flutter/material.dart';
import 'package:learn_flutter_widget/route/routeCardTest2.dart';
import 'package:learn_flutter_widget/themes/theme.dart';
import 'package:learn_flutter_widget/view/main_view_layouts/view_stack/view_stack_one.dart';

class RouteStack extends StatefulWidget {
  const RouteStack({Key? key}) : super(key: key);

  @override
  State<RouteStack> createState() => _RouteStackState();
}

class _RouteStackState extends State<RouteStack> {
  late int _selecTextIndex = 0;
  List viewWidget = [
       ViewStackOne(),
    const RouteCardTest2(),
    const RouteCardTest2(),
  ];
  void _onItemTapped(int index) {
    _selecTextIndex = index;
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => viewWidget[_selecTextIndex]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blueAccent,
            border: Border.all(
              color: Colors.black,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(10.0),
            gradient: const LinearGradient(
                colors: [Colors.indigo, Colors.blueAccent]),
            boxShadow: [
              BoxShadow(
                  color: gradientGrey2,
                  blurRadius: 2.0,
                  offset: const Offset(2.0, 2.0))
            ]),
        height: 300,
        width: 300,
        child: GridView.count(
          scrollDirection: Axis.vertical,
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          padding: const EdgeInsets.all(20),
          children: <GestureDetector>[
            GestureDetector(
              onTap: () {
                _onItemTapped(0);
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 187, 214, 31),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'Stack 1',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                _onItemTapped(1);
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 187, 214, 31),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'Stack 2',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                _onItemTapped(2);
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 187, 214, 31),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'Stack 3',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

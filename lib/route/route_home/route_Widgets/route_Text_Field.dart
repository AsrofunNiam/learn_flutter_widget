import 'package:flutter/material.dart';
import 'package:learn_flutter_widget/route/routeCardTest2.dart';
import 'package:learn_flutter_widget/themes/theme.dart';
import 'package:learn_flutter_widget/view/mainView_Widgets/view_textfield/view_textfield_one.dart';

class RouteWidgets extends StatefulWidget {
  const RouteWidgets({Key? key}) : super(key: key);

  @override
  State<RouteWidgets> createState() => _RouteWidgetsState();
}

class _RouteWidgetsState extends State<RouteWidgets> {
  late int _selecTextIndex = 0;
  List viewWidget = [
    const ViewTextField1(),
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
                      'TextField 1',
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
                      'TextField 2',
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
                      'TextField 3',
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

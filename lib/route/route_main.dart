import 'package:flutter/material.dart';
import 'package:learn_flutter_widget/themes/theme.dart';

// ignore: must_be_immutable
class RouteMain extends StatelessWidget {
  String? testText1;
  String? testText2;
  String? testText3;
  late Function() callOne;
  late Function() callTwo;
  late Function() callThree;
  int selecTextIndex = 0;

  RouteMain({
    Key? key,
    required this.testText1,
    required this.testText2,
    required this.testText3,
    // required this.myList,
    required this.callOne,
    required this.callTwo,
    required this.callThree,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // void _onItemTapped(int index) {
    //   // int selecTextIndex = 0;
    //   selecTextIndex = index;
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) =>movePage));
    // }

    return Container(
      decoration: BoxDecoration(
          color: Colors.blueAccent,
          border: Border.all(
            color: Colors.black,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(10.0),
          gradient:
              const LinearGradient(colors: [Colors.indigo, Colors.blueAccent]),
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
              // _onItemTapped(1);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => callOne()));
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 187, 214, 31),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    testText1.toString(),
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // _onItemTapped(2);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => callTwo()));
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 187, 214, 31),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    testText2.toString(),
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // _onItemTapped(2);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => callThree()));
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 187, 214, 31),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    testText3.toString(),
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class CallClassis {
//   late int _selecTextIndex = 0;

//   List viewWidget = [
//     const ViewInnkwellOne(),
//     const ViewCardTwo(),
//     const RouteCardTest2(),
//   ];

//   BuildContext get context => null;

// void _onItemTapped(int index) {
//     _selecTextIndex = index;
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => viewWidget[_selecTextIndex]),
//     );
//   }

// }

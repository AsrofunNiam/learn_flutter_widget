import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:learn_flutter_widget/themes/style.dart';
import 'package:learn_flutter_widget/themes/theme.dart';

class RouteWidgets extends StatefulWidget {
  const RouteWidgets({Key? key}) : super(key: key);

  @override
  State<RouteWidgets> createState() => _RouteWidgetsState();
}

class _RouteWidgetsState extends State<RouteWidgets> {
  // List<GridListItems> items = [
  //   GridListItems(color:Colors.green,title: 'Bicycle', icon: Icons.directions_bike),
  //   GridListItems(color:Colors.pink[300],title:'Boat', icon: Icons.directions_boat),
  //   GridListItems(color:Colors.pink[300],title: 'Bus', icon: Icons.directions_bus),
  //   GridListItems(color:Colors.pink[300],title: 'Train', icon: Icons.directions_railway),
  //   GridListItems(color:Colors.pink[300],title: 'Walk', icon: Icons.directions_walk),
  //   GridListItems(color:Colors.pink[300],title: 'Contact', icon: Icons.contact_mail),
  //   GridListItems(color:Colors.green,title: 'Bicycle', icon: Icons.directions_bike),
  //   GridListItems(color:Colors.pink[300],title:'Boat', icon: Icons.directions_boat),
  //   GridListItems(color:Colors.pink[300],title: 'Bus', icon: Icons.directions_bus),
  //   GridListItems(color:Colors.pink[300],title: 'Train', icon: Icons.directions_railway),
  //   GridListItems(color:Colors.pink[300],title: 'Walk', icon: Icons.directions_walk),
  //   GridListItems(color:Colors.pink[300],title: 'Contact', icon: Icons.contact_mail),
  //   GridListItems(color:Colors.green,title: 'Bicycle', icon: Icons.directions_bike),
  //   GridListItems(color:Colors.pink[300],title:'Boat', icon: Icons.directions_boat),
  //   GridListItems(color:Colors.pink[300],title: 'Bus', icon: Icons.directions_bus),
  //   GridListItems(color:Colors.pink[300],title: 'Train', icon: Icons.directions_railway),
  //   GridListItems(color:Colors.pink[300],title: 'Walk', icon: Icons.directions_walk),
  //   GridListItems(color:Colors.pink[300],title: 'Contact', icon: Icons.contact_mail),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        padding: EdgeInsets.all(05.0),
        height: 500,
        width: 300,
        color: Color.fromARGB(255, 124, 132, 245),
        child: GridView.count(
          scrollDirection: Axis.vertical,
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          padding: const EdgeInsets.all(20),
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 187, 214, 31),
              ),
              child: const Text(
                'Text 1',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 62, 214, 31),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 179, 13, 13),
              ),
            ),
          ],
        ),
      ),
    ));

    // body: Center(
    //   child: Container(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children:<GestureDetector> [
    //         GestureDetector(
    //           child: Container(
    //                   height: 30,
    //                   width: 50,
    //                   color: Colors.red,),
    //         ),
    //         GestureDetector(
    //           child: Container(
    //                   height: 30,
    //                   width: 50,
    //                   color: Colors.red,),
    //         ),
    //         // SizedBox(height: 20,)
    //     GestureDetector(
    //           child: Container(
    //                   height: 30,
    //                   width: 50,
    //                   color: Colors.red,),
    //         ),

    //       ],
    // Row(mainAxisAlignment: MainAxisAlignment.center, children: [
    //   Padding(
    //     padding: const EdgeInsets.all(8.0),
    //     child: GestureDetector(
    //       onTap: () {
    //         Navigator.push(
    //           context,
    //           MaterialPageRoute(builder: (context) => RouteWidgets()),
    //         );
    //       },
    //       child: Container(
    //         height: 100,
    //         width: 100,
    //         // ignore: prefer_const_constructors
    //         decoration: const BoxDecoration(
    //             shape: BoxShape.circle, color: Colors.blue),
    //         child: const Center(
    //             child: Text("CARD 1", style: TextStyle(fontSize: 20))),
    //       ),
    //     ),
    //   ),
    // ]),
    // StyleRoute(
    //     title: 'Test',
    //     subtitle: const Text("test"),
    //     starGradient: gradientBlue1,
    //     endGradient: gradientBlue2,
    //     iconLeading: const Icon(Icons.person),
    //     title2: "kos"),
  }
}

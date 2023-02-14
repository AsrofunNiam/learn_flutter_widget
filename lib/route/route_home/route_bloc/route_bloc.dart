import 'package:flutter/material.dart';
import 'package:learn_flutter_widget/route/routeCardTest2.dart';
import 'package:learn_flutter_widget/themes/theme.dart';
import 'package:learn_flutter_widget/view/home_view/main_view_bloc/builder_bloc/view_builder_one.dart';
import 'package:learn_flutter_widget/view/home_view/main_view_bloc/consumer_bloc/view_consumer_one.dart';
import 'package:learn_flutter_widget/view/home_view/main_view_bloc/cubit/view_cubit_one.dart';
import 'package:learn_flutter_widget/view/home_view/main_view_bloc/listener_bloc/view_litener_one.dart';
import 'package:learn_flutter_widget/view/home_view/main_view_bloc/observer_bloc/view_observer_one.dart';

class RouteBloc extends StatefulWidget {
  const RouteBloc({Key? key}) : super(key: key);

  @override
  State<RouteBloc> createState() => _RouteBlocState();
}

class _RouteBlocState extends State<RouteBloc> {
  late int _selecTextIndex = 0;
  List viewWidget = [
    const RouteCardTest2(),
    const ViewCubiteOne(),
    const ViewObserverOne(),
    const ViewBuilderOne(),
    const ViewListenerOne(),
    const ViewConsumerOne()
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
        appBar: AppBar(
          title: const Center(child: Text("BLOC")),
        ),
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
                          'Route BLoc',
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
                          'Cubit',
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
                          'Observer',
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
                    _onItemTapped(3);
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
                          'Builder One',
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
                    _onItemTapped(4);
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
                          'Listener Bloc',
                          style: TextStyle(
                            fontSize: 19,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _onItemTapped(5);
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
                          'Consumer bloc',
                          overflow: TextOverflow.ellipsis,
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
                    _onItemTapped(4);
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
                          'Listener Bloc',
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

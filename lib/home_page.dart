import 'package:flutter/material.dart';
import 'package:learn_flutter_widget/navigation_menus/advance_main.dart';
import 'package:learn_flutter_widget/navigation_menus/home_main.dart';
import 'package:learn_flutter_widget/route/routeCardTest.dart';
import 'package:learn_flutter_widget/route/routeCardTest2.dart';

class HomePAge extends StatefulWidget {
  const HomePAge({Key? key}) : super(key: key);

  @override
  State<HomePAge> createState() => _HomePAgeState();
}

class _HomePAgeState extends State<HomePAge> {
  late int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List viewWidget = [
    const HomeMain(),
    const AdvacneMain(),
    const RouteCardTest(),
    const RouteCardTest2(),
    const RouteCardTest2(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: viewWidget[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
              // backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.query_stats_rounded),
              label: 'Advance',
              // backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Step Up',
              // backgroundColor: Colors.purple,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_mall_rounded),
              label: 'Shop',
              // backgroundColor: Colors.pink,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
              // backgroundColor: Colors.pink,
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: const Color.fromARGB(255, 43, 145, 228),
          unselectedItemColor: const Color.fromARGB(255, 87, 87, 87)),
    );
  }
}

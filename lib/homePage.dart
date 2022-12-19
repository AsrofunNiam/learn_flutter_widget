import 'dart:io';

import 'package:flutter/material.dart';
import 'package:learn_flutter_widget/homeMain.dart';
import 'package:learn_flutter_widget/model/model_HomePage/parentAnimation.dart';
import 'package:learn_flutter_widget/model/model_HomePage/parentAsync.dart';
import 'package:learn_flutter_widget/model/model_HomePage/parentLayouts.dart';
import 'package:learn_flutter_widget/model/model_HomePage/parentLists.dart';
import 'package:learn_flutter_widget/model/model_HomePage/parentNavigation.dart';
import 'package:learn_flutter_widget/model/model_HomePage/parentWidget.dart';
import 'package:learn_flutter_widget/route/routeCard.dart';
import 'package:learn_flutter_widget/route/routeCardTest.dart';
import 'package:learn_flutter_widget/route/routeCardTest2.dart';

import 'model/model_HomePage/parentAppbar.dart';

class HomePAge extends StatefulWidget {
  const HomePAge({Key? key}) : super(key: key);

  @override
  State<HomePAge> createState() => _HomePAgeState();
}

class _HomePAgeState extends State<HomePAge> {
  late int _selectedIndex = 1;

  // get index => null;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List viewWidget = [
    HomeMain(),
    RouteCard(),
    RouteCardTest(),
    RouteCardTest2(),
    RouteCardTest2(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu Main"),
        centerTitle: true,
      ),
      body: viewWidget[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
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
          selectedItemColor: Color.fromARGB(255, 43, 145, 228),
          unselectedItemColor: Color.fromARGB(255, 87, 87, 87)),
    );
  }
}

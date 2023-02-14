import 'package:flutter/material.dart';
import 'package:learn_flutter_widget/route/routeCardTest2.dart';
import 'package:learn_flutter_widget/themes/theme.dart';
import 'package:learn_flutter_widget/view/advance_view/mail_project/layouting/change_profile/change_profile_one.dart';
import 'package:learn_flutter_widget/view/advance_view/mail_project/layouting/profile_user/profile_user_one.dart';
import 'package:learn_flutter_widget/view/home_view/main_view_bloc/consumer_bloc/view_consumer_one.dart';
import 'package:learn_flutter_widget/view/home_view/main_view_bloc/cubit/view_cubit_one.dart';
import 'package:learn_flutter_widget/view/home_view/main_view_bloc/listener_bloc/view_litener_one.dart';

class MailLayouting extends StatefulWidget {
  const MailLayouting({Key? key}) : super(key: key);

  @override
  State<MailLayouting> createState() => _MailLayoutingState();
}

class _MailLayoutingState extends State<MailLayouting> {
  late int _selecTextIndex = 0;
  List viewWidget = [
    const RouteCardTest2(),
    const ViewCubiteOne(),
    const ProfileUserOne(),
    const ChangeProfileOne(),
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
          title: const Center(child: Text("Layouting")),
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
                          'Change pass & mail',
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
                          'Home Page',
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
                          'Profile User',
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
                          'Cange Profile',
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
                          'Admin Contac',
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
                          'FAQ',
                          overflow: TextOverflow.ellipsis,
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

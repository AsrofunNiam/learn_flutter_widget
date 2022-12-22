import 'package:flutter/material.dart';
import 'package:learn_flutter_widget/model/model_HomePage/parentAnimation.dart';
import 'package:learn_flutter_widget/model/model_HomePage/parentAsync.dart';
import 'package:learn_flutter_widget/model/model_HomePage/parentLayouts.dart';
import 'package:learn_flutter_widget/model/model_HomePage/parentLists.dart';
import 'package:learn_flutter_widget/model/model_HomePage/parentNavigation.dart';
import 'package:learn_flutter_widget/model/model_HomePage/parentWidget.dart';
import 'package:learn_flutter_widget/route/routeCard.dart';
import 'model/model_HomePage/parentAppbar.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({Key? key}) : super(key: key);

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
        children: <Widget>[
          Container(
            height: 70,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RouteCard()),
                      );
                    },
                    child: Container(
                      height: 60,
                      width: 60,
                      // ignore: prefer_const_constructors
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 185, 214, 238)),
                      child: const Center(
                          child: Text("CARD", style: TextStyle(fontSize: 15))),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 60,
                    // ignore: prefer_const_constructors
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blue),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 60,
                    // ignore: prefer_const_constructors
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blue),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 60,
                    // ignore: prefer_const_constructors
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blue),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            color: Color.fromARGB(255, 240, 240, 240),
            height: 450,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: <Widget>[
                ParentWidget(
                    titleParentMenu: "Widgets",
                    iconParentMenu: Icons.extension,
                    colorParentMenu: const Color.fromARGB(255, 95, 95, 95)),
                ParentLayouts(
                    titleParentMenu: "Layouts",
                    iconParentMenu: Icons.personal_video_sharp,
                    colorParentMenu: const Color.fromARGB(255, 95, 95, 95)),
                ParentList(
                    titleParentMenu: "Lists",
                    iconParentMenu: Icons.grading,
                    colorParentMenu: const Color.fromARGB(255, 95, 95, 95)),
                ParentAppBar(
                    titleParentMenu: "Appbar",
                    iconParentMenu: Icons.edit_calendar,
                    colorParentMenu: const Color.fromARGB(255, 95, 95, 95)),
                ParentNavigation(
                    titleParentMenu: "Navigation",
                    iconParentMenu: Icons.library_add_check,
                    colorParentMenu: const Color.fromARGB(255, 95, 95, 95)),
                ParentAsync(
                    titleParentMenu: "Async",
                    iconParentMenu: Icons.timer,
                    colorParentMenu: const Color.fromARGB(255, 95, 95, 95)),
                ParentAnimation(
                    titleParentMenu: "Animation ( basic )",
                    iconParentMenu: Icons.movie,
                    colorParentMenu: const Color.fromARGB(255, 95, 95, 95)),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 300,
            color: Color.fromARGB(255, 253, 253, 253),
            child: GridView.count(
              scrollDirection: Axis.horizontal,
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
                ),
                Container(
                  color: Color.fromARGB(255, 199, 38, 38),
                  height: 10,
                  width: 10,
                ),
                Container(
                  color: Color.fromARGB(255, 140, 218, 137),
                  height: 10,
                  width: 10,
                ),
                Container(
                  color: Color.fromARGB(255, 185, 27, 27),
                  height: 10,
                  width: 10,
                ),
                Container(
                  color: Color.fromARGB(255, 119, 163, 89),
                  height: 100,
                  width: 10,
                ),
                Container(
                  color: Color.fromARGB(255, 94, 82, 204),
                  height: 20,
                  width: 20,
                ),
                Container(
                  color: Color.fromARGB(255, 40, 40, 43),
                  height: 20,
                  width: 20,
                ),
                Container(
                  color: Color.fromARGB(255, 141, 141, 145),
                  height: 20,
                  width: 20,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            color: Color.fromARGB(255, 110, 129, 241),
          ),
        ],
      ))),
    );
  }
}

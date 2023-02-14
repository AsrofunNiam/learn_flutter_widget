import 'package:flutter/material.dart';
import '../model/menus_advance/mail_project.dart';

class AdvacneMain extends StatefulWidget {
  const AdvacneMain({Key? key}) : super(key: key);

  @override
  State<AdvacneMain> createState() => _AdvacneMainState();
}

class _AdvacneMainState extends State<AdvacneMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Advace Main"),
        centerTitle: true,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
        children: <Widget>[
          Container(
            color: const Color.fromARGB(255, 240, 240, 240),
            height: 450,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: <Widget>[
                MailProject(
                    titleParentMenu: "Mail Project",
                    iconParentMenu: Icons.email,
                    colorParentMenu: const Color.fromARGB(255, 33, 228, 36)),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            height: 100,
            color: const Color.fromARGB(255, 190, 182, 182),
            child: GridView.count(
              scrollDirection: Axis.horizontal,
              crossAxisCount: 1,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              padding: const EdgeInsets.all(10),
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 187, 214, 31),
                  ),
                ),
                Container(
                  color: const Color.fromARGB(255, 199, 38, 38),
                  height: 5,
                  width: 5,
                ),
                Container(
                  color: const Color.fromARGB(255, 140, 218, 137),
                  height: 5,
                  width: 5,
                ),
                Container(
                  color: const Color.fromARGB(255, 185, 27, 27),
                  height: 5,
                  width: 5,
                ),
                Container(
                  color: const Color.fromARGB(255, 119, 163, 89),
                  height: 100,
                  width: 5,
                ),
                Container(
                  color: const Color.fromARGB(255, 94, 82, 204),
                  height: 20,
                  width: 20,
                ),
                Container(
                  color: const Color.fromARGB(255, 40, 40, 43),
                  height: 20,
                  width: 20,
                ),
                Container(
                  color: const Color.fromARGB(255, 141, 141, 145),
                  height: 20,
                  width: 20,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            height: 100,
            color: const Color.fromARGB(255, 110, 129, 241),
          ),
        ],
      ))),
    );
  }
}

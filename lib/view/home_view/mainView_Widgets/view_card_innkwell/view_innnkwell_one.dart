import 'package:flutter/material.dart';

class ViewInnkwellOne extends StatefulWidget {
  const ViewInnkwellOne({Key? key}) : super(key: key);

  @override
  State<ViewInnkwellOne> createState() => _ViewInnkwellOneState();
}

class _ViewInnkwellOneState extends State<ViewInnkwellOne> {
  double sideLength = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Center(child: Text("Innkwell"))),
        body: Center(
          child: AnimatedContainer(
            
            height: sideLength,
            width: sideLength,
            duration: const Duration(seconds: 3),
            curve: Curves.easeIn,
            child: Material(
              // textStyle: Text(""),
              color: Colors.yellow,
              child: InkWell(
                highlightColor: Colors.white.withOpacity(0.5),
                splashColor: Colors.cyanAccent.withOpacity(0.4),
                // child: const Center(child: Text(" Test", style: TextStyle(fontSize: 50),)),
                onTap: () {
                  // setState(() {
                  //   sideLength == 100 ? sideLength = 200 : sideLength = 100;
                  // });
                },
              ),
            ),
          ),
        )
        // body: Center(
        //     child: Column(
        // children: <Widget>[
        //   GestureDetector(
        //     onTap: () {},
        //   ),
        //   const SizedBox(
        //     height: 30,
        //   ),
        //   InkWell(
        //     onTap: () {},
        //     child: Ink(
        //       width: 200,
        //       height: 200,
        //       color: Colors.blue,
        //     ),
        //   )
        // ],
        // )),
        );
  }
}

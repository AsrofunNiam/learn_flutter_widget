import 'package:flutter/material.dart';

class ViewInnkwellOne extends StatelessWidget {
  const ViewInnkwellOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Innkwell")),
      body: Center(
          child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {},
          ),
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {},
            child: Ink(
              width: 200,
              height: 200,
              color: Colors.blue,
            ),
          )
        ],
      )),
    );
  }
}

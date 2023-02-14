import 'package:flutter/material.dart';

class ViewTabsOne extends StatelessWidget {
  const ViewTabsOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Tab Bar "),
            bottom: const TabBar(
              tabs: <Widget> [
              Tab(icon: Icon(Icons.comment),),
              Tab(icon: Icon(Icons.person),),
              Tab(icon: Icon(Icons.comment),),
              Tab(icon: Icon(Icons.comment),),
              // Tab(child: Image(images: AssetsIma),)
            ]),
          ),
        ),
      ),
    );
  }
}

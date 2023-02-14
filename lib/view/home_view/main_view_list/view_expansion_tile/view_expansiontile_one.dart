import 'package:flutter/material.dart';

class ViewExpansionTileOne extends StatelessWidget {
  const ViewExpansionTileOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Expansion Tile one ")),
        ),
        body: Column(
          children: const [
            ExpansionTile(title: Text("Padding"), children: <Widget>[
              Text("Left"),
              Text("Top"),
              Text("Right"),
              Text("Bottom"),
            ]),
            ExpansionTile(
              title: Text("Hello"),
              leading: Padding(
                padding: EdgeInsets.only(right: 30),
                child: Icon(Icons.add),
              ),
              children: [
                ExpansionTile(
                    leading: Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Icon(Icons.add),
                    ),
                    title: Text(" Budi Test "))
              ],
            )
          ],
        ));
  }
}

// class Entry {
//   final String title;
//   final List<Entry> children;

//   Entry({required this.title, , required List<Entry> children[this.children=<Entry>[]] });

//   List<Entry> data=<Entry>[
//     Entry(title: "Testing", children: <Entry>[
//       Entry(title: "chid Test 1", children: [
//         Entry(title: "cut Child", children: <Entry>[
//           Entry(title: title, children: children)
//         ])
//       ])
//     ])
//   ];
  
// }
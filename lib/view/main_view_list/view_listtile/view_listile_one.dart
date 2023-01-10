import 'package:badges/badges.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class ViewListtileOne extends StatelessWidget {
  const ViewListtileOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("List Tile one ")),
        ),
        body: ListView(children: <Widget>[
          const ListTile(
            leading: CircleAvatar(backgroundColor: Colors.red),
            title: Text(" Test One"),
            trailing: Icon(Icons.home),
          ),
          const Divider(
            height: 30,
          ),
          ListTile(
            title: Text(faker.person.name()),
            subtitle: Text(faker.lorem.sentence()),
            trailing: Badge(
              badgeContent: const Text("2"),
              badgeColor: Colors.blue,
              child: const Icon(Icons.message),
            ),
          )
        ]));
  }
}

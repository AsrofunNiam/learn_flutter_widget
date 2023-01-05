import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ViewMappingList extends StatelessWidget {
  ViewMappingList({Key? key}) : super(key: key);
  Color? color;

  final List<Map<String, dynamic>> myList = [
    {
      "name": "Asrofun ",
      "id": 202043,
      "age": 25,
      "favColor": ["Blue", "Red", "Yellow", "Green", "Amber", "Ungu", "Orange"],
    },
    {
      "name": "Niam",
      "id": 202042,
      "age": 26,
      "favColor": ["Orange", "Red", "Green"],
    },
    {
      "name": "Joni",
      "id": 202041,
      "age": 27,
      "favColor": ["Blue", "Red", "Yellow", "Green", "Amber", "Ungu", "Orange"],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Mapping List")),
        ),
        body: ListView(
          children: myList.map((data) {
            List? favColor = data['favColor'];
            // print(favColor);
            return Card(
              margin: const EdgeInsets.all(10),
              child: Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          child: Text(data['age'].toString()),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Name : ${data['name']}"),
                            Text("Id : ${data['id']}"),
                            Text("Age : ${data['age']}"),
                          ],
                        )
                      ],
                    ),
                    // scrol SingleChildScrollView = lisview
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          children: favColor!.map((color) {
                        return Container(
                          height: 30,
                          width: 70,
                          color: getColor(color),
                          margin: const EdgeInsets.all(15),
                          child: Center(child: Text(color)),
                        );
                      }).toList()),
                    )
                  ],
                ),
              ),
            );
          }).toList(),
        ));
  }
}

Color getColor(String index) {
  switch (index) {
    case 'Blue':
      return Colors.blue;
    case 'Red':
      return Colors.red;
    case 'Yellow':
      return Colors.yellow;
    case 'Green':
      return Colors.green;
    case 'Amber':
      return Colors.amber;
    case 'Ungu':
      return const Color(0xFF4F049A);
    case 'Orange':
      return const Color(0xFFFF7A00);
    default:
      return Colors.white;
  }
}

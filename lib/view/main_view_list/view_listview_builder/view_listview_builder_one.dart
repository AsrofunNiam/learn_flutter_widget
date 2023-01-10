import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
class ViewListViewBuilderOne extends StatelessWidget {
  const ViewListViewBuilderOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("List View Builder one")),
        ),
        body: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return CallListTile(
              imageUrl: 'https://picsum.photos/id/$index/200/300',
              title: faker.person.name(),
              subtitle: faker.lorem.sentence(),
            );
          },
        ));
  }
}

class CallListTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const CallListTile({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: const Text("10,10 pm"),
    );
  }
}

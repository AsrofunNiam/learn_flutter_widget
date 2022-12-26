
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChildMenu extends StatelessWidget {
  final String titleChildMenu;
  final IconData iconChildMenu;
  final Color colorChildMenu;

  dynamic Function() movePage;

  ChildMenu(
      {Key? key,
      required this.titleChildMenu,
      required this.iconChildMenu,
      required this.colorChildMenu,
      required this.movePage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: const Icon(
        Icons.arrow_forward_ios_rounded,
        size: 20.0,
        color: Color.fromARGB(255, 87, 84, 74),
      ),
      leading: Icon(
        iconChildMenu,
        size: 20.0,
        color: colorChildMenu,
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 50),
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => movePage()));
      },
      title: Text(
        titleChildMenu,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}

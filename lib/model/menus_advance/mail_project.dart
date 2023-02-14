import 'package:flutter/material.dart';
import 'package:learn_flutter_widget/model/menus_home/child_Menu.dart';
import '../../route/routeCard.dart';
import '../../route/route_advance/route_mail_project/mail_dependence.dart';
import '../../route/route_advance/route_mail_project/mail_layouting.dart';

// ignore: must_be_immutable
class MailProject extends StatelessWidget {
  String titleParentMenu;
  IconData iconParentMenu;
  Color colorParentMenu;
  // int _selectedIndex = 0;
  MailProject(
      {Key? key,
      required this.titleParentMenu,
      required this.iconParentMenu,
      required this.colorParentMenu})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: Icon(
        iconParentMenu,
        size: 30.0,
        color: colorParentMenu,
      ),
      title: Text(
        titleParentMenu,
        style: const TextStyle(
          fontSize: 23,
        ),
      ),
      children: [
        ChildMenu(
          titleChildMenu: "Layouting",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 121, 128, 214),
          movePage: () {
            return const MailLayouting();
          },
        ),
        ChildMenu(
          titleChildMenu: "Dependence",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 121, 128, 214),
          movePage: () {
            return const MailDependance();
          },
        ),
        ChildMenu(
          titleChildMenu: "Conenction",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 121, 128, 214),
          movePage: () {
            return const RouteCard();
          },
        ),
      ],
    );
  }
}

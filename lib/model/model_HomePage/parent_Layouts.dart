import 'package:flutter/material.dart';
import 'package:learn_flutter_widget/model/model_HomePage/child_Menu.dart';
import 'package:learn_flutter_widget/route/routeCard.dart';
import 'package:learn_flutter_widget/route/route_layouts/route_container.dart';

// ignore: must_be_immutable
class ParentLayouts extends StatelessWidget {
  String titleParentMenu;
  IconData iconParentMenu;
  Color colorParentMenu;

  ParentLayouts(
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
          titleChildMenu: "Container",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteContainer();
          },
        ),
        ChildMenu(
          titleChildMenu: "Row, Column",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteCard();
          },
        ),
        ChildMenu(
          titleChildMenu: "Wrap",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteCard();
          },
        ),
        ChildMenu(
          titleChildMenu: "FractionallySizeBox",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteCard();
          },
        ),
        ChildMenu(
          titleChildMenu: "Expanded, SizeBox",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteCard();
          },
        ),
        ChildMenu(
          titleChildMenu: "Stack",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteCard();
          },
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:learn_flutter_widget/model/model_HomePage/child_Menu.dart';
import 'package:learn_flutter_widget/route/routeCard.dart';
import 'package:learn_flutter_widget/route/route_navigation/route_tabs.dart';

// ignore: must_be_immutable
class ParentNavigation extends StatelessWidget {
  String titleParentMenu;
  IconData iconParentMenu;
  Color colorParentMenu;

  ParentNavigation(
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
          titleChildMenu: "Tabs",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteTabs();
          },
        ),
        ChildMenu(
          titleChildMenu: "Dialogs",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteCard();
          },
        ),
        ChildMenu(
          titleChildMenu: "Routes",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteCard();
          },
        ),
        ChildMenu(
          titleChildMenu: "Navigation Drawer",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteCard();
          },
        ),
        ChildMenu(
          titleChildMenu: "Button Sheet",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteCard();
          },
        ),
        ChildMenu(
          titleChildMenu: "Button TapBar",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteCard();
          },
        ),
        ChildMenu(
          titleChildMenu: "Button NavigationBar",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteCard();
          },
        ),
        ChildMenu(
          titleChildMenu: "Page Selectore",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteCard();
          },
        ),
        ChildMenu(
          titleChildMenu: "Draggable Scrollable Sheet",
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

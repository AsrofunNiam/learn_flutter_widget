import 'package:flutter/material.dart';
import 'package:learn_flutter_widget/model/menus_home/child_Menu.dart';
import 'package:learn_flutter_widget/route/route_home/route_animation_basic/route_hero.dart';
import '../../route/routeCard.dart';

// ignore: must_be_immutable
class ParentAnimation extends StatelessWidget {
  String titleParentMenu;
  IconData iconParentMenu;
  Color colorParentMenu;
  // int _selectedIndex = 0;
  ParentAnimation(
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
          titleChildMenu: "Hero",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 121, 128, 214),
          movePage: () {
            return const RouteHero();
          },
        ),
        ChildMenu(
          titleChildMenu: "Opacity",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 121, 128, 214),
          movePage: () {
            return const RouteCard();
          },
        ),
        ChildMenu(
          titleChildMenu: "AnimatedIcon",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 121, 128, 214),
          movePage: () {
            return const RouteCard();
          },
        ),
        ChildMenu(
          titleChildMenu: "Animated Container",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 121, 128, 214),
          movePage: () {
            return const RouteCard();
          },
        ),
        ChildMenu(
          titleChildMenu: "Animated Package",
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

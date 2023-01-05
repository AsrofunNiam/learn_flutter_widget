import 'package:flutter/material.dart';
import 'package:learn_flutter_widget/model/model_HomePage/child_Menu.dart';
import 'package:learn_flutter_widget/route/route_working/route_http_metode.dart';
import '../../route/routeCard.dart';

// ignore: must_be_immutable
class ParentWorking extends StatelessWidget {
  String titleParentMenu;
  IconData iconParentMenu;
  Color colorParentMenu;
  // int _selectedIndex = 0;
  ParentWorking(
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
          titleChildMenu: "HTTP",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 121, 128, 214),
          movePage: () {
            return const RouteHttp();
          },
        ),
        ChildMenu(
          titleChildMenu: "BLOC",
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
      ],
    );
  }
}

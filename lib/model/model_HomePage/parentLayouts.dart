import 'package:flutter/material.dart';
import 'package:learn_flutter_widget/model/model_HomePage/childMenu.dart';
import 'package:learn_flutter_widget/route/routeCard.dart';

class ParentLayouts extends StatelessWidget {
  String titleParentMenu;
  IconData iconParentMenu;
  Color colorParentMenu;

  ParentLayouts(
      {required this.titleParentMenu,
      required this.iconParentMenu,
      required this.colorParentMenu})
      : super();

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
        style: TextStyle(
          fontSize: 23,
        ),
      ),
      children: [
        ChildMenu(
          titleChildMenu: "Container",
          iconChildMenu: Icons.star,
          colorChildMenu: Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return RouteCard();
          },
        ),
        ChildMenu(
          titleChildMenu: "Row, Column",
          iconChildMenu: Icons.star,
          colorChildMenu: Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return RouteCard();
          },
        ),
        ChildMenu(
          titleChildMenu: "Wrap",
          iconChildMenu: Icons.star,
          colorChildMenu: Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return RouteCard();
          },
        ),
        ChildMenu(
          titleChildMenu: "FractionallySizeBox",
          iconChildMenu: Icons.star,
          colorChildMenu: Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return RouteCard();
          },
        ),
        ChildMenu(
          titleChildMenu: "Expanded, SizeBox",
          iconChildMenu: Icons.star,
          colorChildMenu: Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return RouteCard();
          },
        ),
        ChildMenu(
          titleChildMenu: "Stack",
          iconChildMenu: Icons.star,
          colorChildMenu: Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return RouteCard();
          },
        ),
      ],
    );
  }
}

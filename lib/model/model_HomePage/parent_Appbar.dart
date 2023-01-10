import 'package:flutter/material.dart';
import 'package:learn_flutter_widget/model/model_HomePage/child_Menu.dart';
import 'package:learn_flutter_widget/route/route_appbar/route_backdrop.dart';
import 'package:learn_flutter_widget/route/route_appbar/route_basic_appbar.dart';
import 'package:learn_flutter_widget/route/route_appbar/route_button_variant.dart';
import 'package:learn_flutter_widget/route/route_appbar/route_convex_appbar.dart';
import 'package:learn_flutter_widget/route/route_appbar/route_hidable_buttonbar.dart';
import 'package:learn_flutter_widget/route/route_appbar/route_search.dart';
import 'package:learn_flutter_widget/route/route_appbar/route_silver_appbar.dart';

// ignore: must_be_immutable
class ParentAppBar extends StatelessWidget {
  String titleParentMenu;
  IconData iconParentMenu;
  Color colorParentMenu;

  ParentAppBar(
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
          titleChildMenu: "Basic AppBar",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteBasicAppBar();
          },
        ),
        ChildMenu(
          titleChildMenu: "Button variant",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteButtonVariant();
          },
        ),
        ChildMenu(
          titleChildMenu: "Silver AppBar",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteSilverAppbar();
          },
        ),
        ChildMenu(
          titleChildMenu: "Search",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteSearch();
          },
        ),
        ChildMenu(
          titleChildMenu: "BackDrop",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteBackDrop();
          },
        ),
        ChildMenu(
          titleChildMenu: "Convex AppBar",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteConvexAppBar();
          },
        ),
        ChildMenu(
          titleChildMenu: "Hidable bottom bar",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteHidableButton();
          },
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:learn_flutter_widget/model/model_HomePage/child_Menu.dart';
import 'package:learn_flutter_widget/route/route_Async/route_future_builder.dart';
import 'package:learn_flutter_widget/themes/theme.dart';
import '../../route/routeCard.dart';

// ignore: must_be_immutable
class ParentAsync extends StatelessWidget {
  String titleParentMenu;
  IconData iconParentMenu;
  Color colorParentMenu;

  ParentAsync(
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
          titleChildMenu: "Future Builder",
          iconChildMenu: Icons.star,
          colorChildMenu: gradientBlue1,
          movePage: () {
            return const RouteFutureBuilder();
          },
        ),
        ChildMenu(
          titleChildMenu: "Stream Builder( Time App ) ",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteCard();
          },
        ),
        ChildMenu(
          titleChildMenu: "Stream Controller",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteCard();
          },
        ),
        ChildMenu(
          titleChildMenu: "ValueListenableBuilder",
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

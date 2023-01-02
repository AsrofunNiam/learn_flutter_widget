import 'package:flutter/material.dart';
import 'package:learn_flutter_widget/model/model_HomePage/child_Menu.dart';
import 'package:learn_flutter_widget/route/route_layouts/route_container.dart';
import 'package:learn_flutter_widget/route/route_layouts/route_expanded_sizebox.dart';
import 'package:learn_flutter_widget/route/route_layouts/route_fractionallySizebox.dart';
import 'package:learn_flutter_widget/route/route_layouts/route_row_column.dart';
import 'package:learn_flutter_widget/route/route_layouts/route_stack.dart';
import 'package:learn_flutter_widget/route/route_layouts/route_wrap.dart';

import '../../route/route_layouts/route_flexsible.dart';

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
            return const RouteRowColumn();
          },
        ),
        ChildMenu(
          titleChildMenu: "Wrap",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteWrap();
          },
        ),
        ChildMenu(
          titleChildMenu: "FractionallySizeBox",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteFractionallySizebox();
          },
        ),
        ChildMenu(
          titleChildMenu: "Expanded, SizeBox",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteExpanded();
          },
        ),
        ChildMenu(
          titleChildMenu: "Stack",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteStack();
          },
        ),
        ChildMenu(
          titleChildMenu: "FlexSible",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteFlexible();
          },
        ),
      ],
    );
  }
}

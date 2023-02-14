import 'package:flutter/material.dart';
import 'package:learn_flutter_widget/model/menus_home/child_Menu.dart';
import 'package:learn_flutter_widget/route/route_home/route_List/routeGridList.dart';
import 'package:learn_flutter_widget/route/route_home/route_List/routeListTile.dart';
import 'package:learn_flutter_widget/route/route_home/route_List/route_data_tables.dart';
import 'package:learn_flutter_widget/route/route_home/route_List/route_expansion_tile.dart';
import 'package:learn_flutter_widget/route/route_home/route_List/route_listview_builder.dart';
import 'package:learn_flutter_widget/route/route_home/route_List/route_listwill_scrollview.dart';
import 'package:learn_flutter_widget/route/route_home/route_List/route_mapping_list.dart';
import 'package:learn_flutter_widget/route/route_home/route_List/route_reoderlabel_list.dart';
import 'package:learn_flutter_widget/route/route_home/route_List/route_slidable_listtile.dart';
import 'package:learn_flutter_widget/route/route_home/route_List/route_swipe_dismiss.dart';

// ignore: must_be_immutable
class ParentList extends StatelessWidget {
  String titleParentMenu;
  IconData iconParentMenu;
  Color colorParentMenu;

  ParentList(
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
          titleChildMenu: "Mapping List",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteMappingList();
          },
        ),
        ChildMenu(
          titleChildMenu: "ListTile",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteListTile();
          },
        ),
        ChildMenu(
          titleChildMenu: "ListView Builder",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteListViewBUilder();
          },
        ),
        ChildMenu(
          titleChildMenu: "Grid List",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteGridList();
          },
        ),
        ChildMenu(
          titleChildMenu: "Expansion Tile",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteExpansionTile();
          },
        ),
        ChildMenu(
          titleChildMenu: "Swipe to Dismiss",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteSwipeDismiss();
          },
        ),
        ChildMenu(
          titleChildMenu: "ReorderLabelList",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteReorderLabel();
          },
        ),
        ChildMenu(
          titleChildMenu: "ListWill ScrollView",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteListwillScollView();
          },
        ),
        ChildMenu(
          titleChildMenu: "Slidable list tile",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteSlidableListTile();
          },
        ),
        ChildMenu(
          titleChildMenu: "Data Tables",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteDataTables();
          },
        ),
      ],
    );
  }
}

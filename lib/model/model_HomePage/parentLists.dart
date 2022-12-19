import 'package:flutter/material.dart';
import 'package:learn_flutter_widget/model/model_HomePage/childMenu.dart';
import 'package:learn_flutter_widget/route/routeCard.dart';


class ParentList extends StatelessWidget {
  final String titleParentMenu;
  final IconData iconParentMenu;
  final Color colorParentMenu;

  const ParentList(
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
      title: Text(titleParentMenu, style: TextStyle(
        fontSize: 23,
      ),),
      children:[
        ChildMenu(titleChildMenu: "ListTile",iconChildMenu: Icons.star,colorChildMenu: Color.fromARGB(255, 94, 104, 247), 
        movePage: () { return RouteCard(); },
        ),
        ChildMenu(titleChildMenu: "ListView Builder",iconChildMenu: Icons.star,colorChildMenu: Color.fromARGB(255, 94, 104, 247), 
        movePage: () { return RouteCard(); },
        ),
        ChildMenu(titleChildMenu: "Grid List",iconChildMenu: Icons.star,colorChildMenu: Color.fromARGB(255, 94, 104, 247), 
        movePage: () { return RouteCard(); },
        ),
        ChildMenu(titleChildMenu: "Expansion Tile",iconChildMenu: Icons.star,colorChildMenu: Color.fromARGB(255, 94, 104, 247), 
        movePage: () { return RouteCard(); },
        ),
        ChildMenu(titleChildMenu: "Swipe to Dismiss",iconChildMenu: Icons.star,colorChildMenu: Color.fromARGB(255, 94, 104, 247), 
        movePage: () { return RouteCard(); },
        ),
        ChildMenu(titleChildMenu: "ReorderLabelList",iconChildMenu: Icons.star,colorChildMenu: Color.fromARGB(255, 94, 104, 247), 
        movePage: () { return RouteCard(); },
        ),
        ChildMenu(titleChildMenu: "ListWill ScrollView",iconChildMenu: Icons.star,colorChildMenu: Color.fromARGB(255, 94, 104, 247), 
        movePage: () { return RouteCard(); },
        ),
        ChildMenu(titleChildMenu: "Slidable list tile",iconChildMenu: Icons.star,colorChildMenu: Color.fromARGB(255, 94, 104, 247), 
        movePage: () { return RouteCard(); },
        ),
        ChildMenu(titleChildMenu: "Data Tables",iconChildMenu: Icons.star,colorChildMenu: Color.fromARGB(255, 94, 104, 247), 
        movePage: () { return RouteCard(); },
        ),
      ],
    );
  }
}

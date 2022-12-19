import 'package:flutter/material.dart';
import 'package:learn_flutter_widget/model/model_HomePage/childMenu.dart';
import 'package:learn_flutter_widget/route/routeCard.dart';


class ParentAppBar extends StatelessWidget {
  final String titleParentMenu;
  final IconData iconParentMenu;
  final Color colorParentMenu;

  const ParentAppBar(
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
        ChildMenu(
          titleChildMenu: "Basic AppBar", iconChildMenu: Icons.star,colorChildMenu: Color.fromARGB(255, 94, 104, 247), 
          movePage: () { return RouteCard(); },
        ),
        ChildMenu(
          titleChildMenu: "Button variant", iconChildMenu: Icons.star,colorChildMenu: Color.fromARGB(255, 94, 104, 247), 
          movePage: () { return RouteCard(); },
        ),
        ChildMenu(
          titleChildMenu: "Silver AppBar", iconChildMenu: Icons.star,colorChildMenu: Color.fromARGB(255, 94, 104, 247), 
          movePage: () { return RouteCard(); },
        ),
        ChildMenu(
          titleChildMenu: "Search", iconChildMenu: Icons.star,colorChildMenu: Color.fromARGB(255, 94, 104, 247), 
          movePage: () { return RouteCard(); },
        ),
        ChildMenu(
          titleChildMenu: "BackDrop", iconChildMenu: Icons.star,colorChildMenu: Color.fromARGB(255, 94, 104, 247), 
          movePage: () { return RouteCard(); },
        ),
        ChildMenu(
          titleChildMenu: "Convex AppBar", iconChildMenu: Icons.star,colorChildMenu: Color.fromARGB(255, 94, 104, 247), 
          movePage: () { return RouteCard(); },
        ),
        ChildMenu(
          titleChildMenu: "Hidable bottom bar", iconChildMenu: Icons.star,colorChildMenu: Color.fromARGB(255, 94, 104, 247), 
          movePage: () { return RouteCard(); },
        ),
      ],
    );
  }
}

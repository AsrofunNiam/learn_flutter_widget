import 'package:flutter/material.dart';
import 'package:learn_flutter_widget/model/model_HomePage/childMenu.dart';
import 'package:learn_flutter_widget/route/routeCard.dart';


class ParentNavigation extends StatelessWidget {
  final String titleParentMenu;
  final IconData iconParentMenu;
  final Color colorParentMenu;

  const ParentNavigation(
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
        ChildMenu(titleChildMenu: "Tabs",iconChildMenu: Icons.star, colorChildMenu: Color.fromARGB(255, 94, 104, 247), 
        movePage: () { return RouteCard(); },
        ),
        ChildMenu(titleChildMenu: "Dialogs",iconChildMenu: Icons.star, colorChildMenu: Color.fromARGB(255, 94, 104, 247), 
        movePage: () { return RouteCard(); },
        ),
        ChildMenu(titleChildMenu: "Routes",iconChildMenu: Icons.star, colorChildMenu: Color.fromARGB(255, 94, 104, 247), 
        movePage: () { return RouteCard(); },
        ),
        ChildMenu(titleChildMenu: "Navigation Drawer",iconChildMenu: Icons.star, colorChildMenu: Color.fromARGB(255, 94, 104, 247), 
        movePage: () { return RouteCard(); },
        ),
        ChildMenu(titleChildMenu: "Button Sheet",iconChildMenu: Icons.star, colorChildMenu: Color.fromARGB(255, 94, 104, 247), 
        movePage: () { return RouteCard(); },
        ),
        ChildMenu(titleChildMenu: "Button TapBar",iconChildMenu: Icons.star, colorChildMenu: Color.fromARGB(255, 94, 104, 247), 
        movePage: () { return RouteCard(); },
        ),
        ChildMenu(titleChildMenu: "Button NavigationBar",iconChildMenu: Icons.star, colorChildMenu: Color.fromARGB(255, 94, 104, 247), 
        movePage: () { return RouteCard(); },
        ),
        ChildMenu(titleChildMenu: "Page Selectore",iconChildMenu: Icons.star, colorChildMenu: Color.fromARGB(255, 94, 104, 247), 
        movePage: () { return RouteCard(); },
        ),
        ChildMenu(titleChildMenu: "Draggable Scrollable Sheet",iconChildMenu: Icons.star, colorChildMenu: Color.fromARGB(255, 94, 104, 247), 
        movePage: () { return RouteCard(); },
        ),

      ],
    );
  }
}

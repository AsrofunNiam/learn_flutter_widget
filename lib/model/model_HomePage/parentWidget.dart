import 'package:flutter/material.dart';
import 'package:learn_flutter_widget/model/model_HomePage/childMenu.dart';
import 'package:learn_flutter_widget/route/routeCard.dart';


class ParentWidget extends StatelessWidget {
  final String titleParentMenu;
  final IconData iconParentMenu;
  final Color colorParentMenu;

  const ParentWidget(
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
        ChildMenu(titleChildMenu: "TextField",iconChildMenu: Icons.star,colorChildMenu: Color.fromARGB(255, 94, 104, 247), 
        movePage: () { return RouteCard(); }, 
        ),
        ChildMenu(titleChildMenu: "Text Form Field",iconChildMenu: Icons.star,colorChildMenu: Color.fromARGB(255, 94, 104, 247), 
        movePage: () { return RouteCard(); }, 
        ),
        ChildMenu(titleChildMenu: "Images",iconChildMenu: Icons.star,colorChildMenu: Color.fromARGB(255, 94, 104, 247), 
        movePage: () { return RouteCard(); }, 
        ),
        ChildMenu(titleChildMenu: "Card and innkwell",iconChildMenu: Icons.star,colorChildMenu: Color.fromARGB(255, 94, 104, 247), 
        movePage: () { return RouteCard(); }, 
        ),
        ChildMenu(titleChildMenu: "Gradient",iconChildMenu: Icons.star,colorChildMenu: Color.fromARGB(255, 94, 104, 247), 
        movePage: () { return RouteCard(); }, 
        ),
        ChildMenu(titleChildMenu: "Other StatefulWidget",iconChildMenu: Icons.star,colorChildMenu: Color.fromARGB(255, 94, 104, 247), 
        movePage: () { return RouteCard(); }, 
        ),

      ],
    );
  }
}

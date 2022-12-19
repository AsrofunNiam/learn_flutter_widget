import 'package:flutter/material.dart';
import 'package:learn_flutter_widget/model/model_HomePage/childMenu.dart';
import 'package:learn_flutter_widget/route/routeCard.dart';


class ParentAnimation extends StatelessWidget {
  final String titleParentMenu;
  final IconData iconParentMenu;
  final Color colorParentMenu;

  const ParentAnimation(
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
        ChildMenu(titleChildMenu: "Hero",iconChildMenu: Icons.star,colorChildMenu: Color.fromARGB(255, 121, 128, 214), 
        movePage: () { return RouteCard(); }, 
        ),
        ChildMenu(titleChildMenu: "Opacity",iconChildMenu: Icons.star,colorChildMenu: Color.fromARGB(255, 121, 128, 214), 
        movePage: () { return RouteCard(); }, 
        ),
        ChildMenu(titleChildMenu: "AnimatedIcon",iconChildMenu: Icons.star,colorChildMenu: Color.fromARGB(255, 121, 128, 214), 
        movePage: () { return RouteCard(); }, 
        ),
        ChildMenu(titleChildMenu: "Animated Container",iconChildMenu: Icons.star,colorChildMenu: Color.fromARGB(255, 121, 128, 214), 
        movePage: () { return RouteCard(); }, 
        ),
        ChildMenu(titleChildMenu: "Animated Package",iconChildMenu: Icons.star,colorChildMenu: Color.fromARGB(255, 121, 128, 214), 
        movePage: () { return RouteCard(); }, 
        ),
      ],
    );
  }
}
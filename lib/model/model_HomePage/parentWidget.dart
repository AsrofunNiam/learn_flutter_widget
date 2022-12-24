import 'package:flutter/material.dart';
import 'package:learn_flutter_widget/model/model_HomePage/childMenu.dart';
import 'package:learn_flutter_widget/route/routeCard.dart';
import 'package:learn_flutter_widget/route/route_Widgets/routeCardInnkwell.dart';
import 'package:learn_flutter_widget/route/route_Widgets/routeImages.dart';
import 'package:learn_flutter_widget/route/route_Widgets/routeTextField.dart';
import 'package:learn_flutter_widget/route/route_Widgets/routeTextFormField.dart';

class ParentWidget extends StatelessWidget {
  String titleParentMenu;
  IconData iconParentMenu;
  Color colorParentMenu;

  ParentWidget(
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
          titleChildMenu: "TextField",
          iconChildMenu: Icons.star,
          colorChildMenu: Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteWidgets();
          },
        ),
        ChildMenu(
          titleChildMenu: "Text Form Field",
          iconChildMenu: Icons.star,
          colorChildMenu: Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteTextFormField();
          },
        ),
        ChildMenu(
          titleChildMenu: "Images",
          iconChildMenu: Icons.star,
          colorChildMenu: Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteImages();
          },
        ),
        ChildMenu(
          titleChildMenu: "Card and innkwell",
          iconChildMenu: Icons.star,
          colorChildMenu: Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteTextFormField();
          },
        ),
        ChildMenu(
          titleChildMenu: "Gradient",
          iconChildMenu: Icons.star,
          colorChildMenu: Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return RouteCard();
          },
        ),
        ChildMenu(
          titleChildMenu: "Other StatefulWidget",
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

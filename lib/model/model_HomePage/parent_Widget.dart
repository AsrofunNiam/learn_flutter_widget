import 'package:flutter/material.dart';
import 'package:learn_flutter_widget/model/model_HomePage/child_Menu.dart';
import 'package:learn_flutter_widget/route/route_Widgets/route_Images.dart';
import 'package:learn_flutter_widget/route/route_Widgets/route_Text_Field.dart';
import 'package:learn_flutter_widget/route/route_Widgets/route_TextFormField.dart';
import 'package:learn_flutter_widget/route/route_Widgets/route_card.dart';
import 'package:learn_flutter_widget/route/route_Widgets/route_statefullWidget.dart';

import '../../route/routeCard.dart';

// ignore: must_be_immutable
class ParentWidget extends StatelessWidget {
  String titleParentMenu;
  IconData iconParentMenu;
  Color colorParentMenu;

  ParentWidget(
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
          titleChildMenu: "TextField",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteWidgets();
          },
        ),
        ChildMenu(
          titleChildMenu: "Text Form Field",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteTextFormField();
          },
        ),
        ChildMenu(
          titleChildMenu: "Images",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteImages();
          },
        ),
        ChildMenu(
          titleChildMenu: "Card and innkwell",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteTextFormField();
          },
        ),
        ChildMenu(
          titleChildMenu: "Gradient",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteCard();
          },
        ),
        ChildMenu(
          titleChildMenu: "Other StatefulWidget",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteStatefullWidget();
          },
        ),
        ChildMenu(
          titleChildMenu: "Card",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 94, 104, 247),
          movePage: () {
            return const RouteCardInnkwell();
          },
        ),
      ],
    );
  }
}

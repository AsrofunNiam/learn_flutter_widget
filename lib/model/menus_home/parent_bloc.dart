import 'package:flutter/material.dart';
import 'package:learn_flutter_widget/model/menus_home/child_Menu.dart';
import 'package:learn_flutter_widget/route/route_home/route_bloc/route_bloc.dart';
import 'package:learn_flutter_widget/route/route_home/route_working/route_websocket.dart';
import '../../route/routeCard.dart';

// ignore: must_be_immutable
class ParentBloc extends StatelessWidget {
  String titleParentMenu;
  IconData iconParentMenu;
  Color colorParentMenu;
  // int _selectedIndex = 0;
  ParentBloc(
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
          titleChildMenu: "Bloc Dasar",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 121, 128, 214),
          movePage: () {
            return const RouteBloc();
          },
        ),
        ChildMenu(
          titleChildMenu: "Bloc Midle",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 121, 128, 214),
          movePage: () {
            return const RouteWebSocket();
          },
        ),
        ChildMenu(
          titleChildMenu: "Bloc Expert",
          iconChildMenu: Icons.star,
          colorChildMenu: const Color.fromARGB(255, 121, 128, 214),
          movePage: () {
            return const RouteCard();
          },
        ),
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter_widget/themes/theme.dart';

class StyleTrackDetail extends StatelessWidget {
  final String title;
  final Widget subtitle;
  final Color starGradient;
  final Color endGradient;
  final Widget iconLeading;
  final String title2;

  const StyleTrackDetail(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.starGradient,
      required this.endGradient,
      required this.iconLeading,
      required this.title2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [starGradient, endGradient]),
      ),
    );
    // return GestureDetector(
    //     child: ListTile(
    //   leading: Container(
    //     padding: EdgeInsets.all(10),
    //     decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(15.0),
    //       gradient: LinearGradient(
    //           begin: Alignment.topCenter,
    //           end: Alignment.bottomCenter,
    //           colors: [starGradient, endGradient]),
    //     ),
    //   ),
    // ));
  }
}

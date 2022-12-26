import 'package:flutter/material.dart';

class ModalParsingCard extends StatelessWidget {
  final IconData iconCard;
  final String textCard;
  final Color colorCard;

  const ModalParsingCard(
      {Key? key,
      required this.iconCard,
      required this.textCard,
      required this.colorCard})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Icon(
            iconCard,
            size: 50.0,
            color: colorCard,
          ),
          Text(
            textCard,
            style: const TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}

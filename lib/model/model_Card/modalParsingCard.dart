
import 'package:flutter/material.dart';

class ModalParsingCard extends StatelessWidget {
  final IconData iconCard;
  final String textCard;
  final Color colorCard;

   const ModalParsingCard({required this.iconCard, required this.textCard, required this.colorCard}) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
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
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:learn_flutter_widget/model/model_Card/modal_parsing_card.dart';

class ViewCard1 extends StatelessWidget {
  const ViewCard1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var home;
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Parsing data widget Card"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          ModalParsingCard(
              iconCard: Icons.home,
              textCard: 'Test 1',
              colorCard: Color.fromARGB(255, 91, 130, 238)),
          SizedBox(
            height: 30,
          ),
          ModalParsingCard(
              iconCard: Icons.book,
              textCard: 'Test 2',
              colorCard: Color.fromARGB(255, 88, 231, 207)),
          SizedBox(
            height: 30,
          ),
          ModalParsingCard(
              iconCard: Icons.person,
              textCard: 'Test 3',
              colorCard: Color.fromARGB(255, 240, 124, 116)),
        ],
      ),
    );
  }
}

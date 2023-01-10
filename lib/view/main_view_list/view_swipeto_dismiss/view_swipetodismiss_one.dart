import 'package:flutter/material.dart';

class ViewSwipeDismissOne extends StatefulWidget {
  const ViewSwipeDismissOne({Key? key}) : super(key: key);

  @override
  State<ViewSwipeDismissOne> createState() => _ViewSwipeDismissOneState();
}

class _ViewSwipeDismissOneState extends State<ViewSwipeDismissOne> {
  final items = List<String>.generate(20, (i) => "Item ${i + 1}");

  @override
  Widget build(BuildContext context) {
    // var item = items[index];
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Swipe to Dissmiss one ")),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: ((context, index) {
            final String item = items[index];
            return Dismissible(
                direction: DismissDirection.endToStart,
                key: Key(item),
                onDismissed: (DismissDirection dir) {
                  // Removes that item the list on swipwe
                  setState(() {
                    items.removeAt(index);
                  });
                  // Shows the information on Snackbar
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(dir == DismissDirection.startToEnd
                          ? '$item removed'
                          : '$item liked'),
                      action: SnackBarAction(
                        label: 'Undo',
                        onPressed: () {
                          setState(() {
                            items.insert(index, item);
                          });
                        },
                      ),
                    ),
                  );
                },
                background: Container(
                    alignment: Alignment.centerLeft,
                    child: const Icon(Icons.remove),
                    color: Colors.red),
                secondaryBackground: Container(
                    alignment: Alignment.centerRight,
                    child: const Icon(Icons.remove),
                    color: const Color.fromARGB(255, 124, 244, 54)),
                child: ListTile(title: Center(child: Text(items[index]))));
          }),
        ));
  }
}

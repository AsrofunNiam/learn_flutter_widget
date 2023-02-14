import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class LatihanCubit extends Cubit<int> {
  int? startValue;
  LatihanCubit({this.startValue = 70}) : super(startValue!);

  void addData() {
    emit(state + 1);
  }

  void removeData() {
    emit(state - 1);
  }
}

class ViewCubiteOne extends StatelessWidget {
  ViewCubiteOne({Key? key}) : super(key: key);
  LatihanCubit myCounter = LatihanCubit();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Cubit Bloc One")),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            StreamBuilder(
                initialData: myCounter.startValue,
                stream: myCounter.stream,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    // print(myCounter.startValue);
                    return Center(
                      child: Column(children: [
                        const Text('Loading ...',
                            style: TextStyle(fontSize: 40)),
                        Text('${snapshot.data}',
                            style: const TextStyle(fontSize: 40)),
                      ]),
                      // child:
                    );
                  } else {
                    return Center(
                      child: Text(
                        '${snapshot.data}',
                        style: const TextStyle(fontSize: 40),
                      ),
                    );
                  }
                }),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    myCounter.addData();
                  },
                  icon: const Icon(Icons.add),
                ),
                IconButton(
                  onPressed: () {
                    myCounter.removeData();
                  },
                  icon: const Icon(Icons.remove),
                ),
              ],
            )
          ],
        ));
  }
}

//  custom value gunakan param 
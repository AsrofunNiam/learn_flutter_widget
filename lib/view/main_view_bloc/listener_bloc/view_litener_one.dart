import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_flutter_widget/view/main_view_bloc/listener_bloc/counter_one.dart';

class ViewListenerOne extends StatelessWidget {
  const ViewListenerOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CounterListenerOne counterListenerOne = CounterListenerOne();
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Listener One")),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocListener<CounterListenerOne, int>(
              bloc: counterListenerOne,
              listener: (context, state) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    duration: const Duration(milliseconds: 50),
                    content: Text('Build Number $state ')));
              },
              // listenWhen: (previous, current) { // conditon waiting run
              //   if (current > 15) {
              //     return true;
              //   }  else {
              //     return false;
              //   }
              // },
              child: BlocBuilder<CounterListenerOne, int>(
                bloc: counterListenerOne,
                builder: (context, state) {
                  // ignore: unnecessary_null_comparison
                  if (state == null) {
                    return const Text('Loading ..',
                        style: TextStyle(fontSize: 30));
                  } else {
                    return Text(
                      '$state',
                      style: const TextStyle(fontSize: 30),
                    );
                  }
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {
                      counterListenerOne.increment();
                    },
                    icon: const Icon(Icons.add)),
                IconButton(
                    onPressed: () {
                      counterListenerOne.decrement();
                    },
                    icon: const Icon(Icons.remove))
              ],
            )
          ],
        ));
  }
}

//

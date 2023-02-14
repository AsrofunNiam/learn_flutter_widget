import 'package:flutter/material.dart';
// import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_flutter_widget/view/home_view/main_view_bloc/builder_bloc/counter_one.dart';

class ViewBuilderOne extends StatelessWidget {
  const ViewBuilderOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CounterCubit counterCubit = CounterCubit();
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Builder one bloc")),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterCubit, int>(
              bloc: counterCubit,
              builder: (context, state) {
                // ignore: unnecessary_null_comparison
                if (state == null) {
                  return const Text('Loading ..',
                      style:TextStyle(fontSize: 30));
                } else {
                  return Text(
                    '$state',
                    style: const TextStyle(fontSize: 30),
                  );
                }
              },
            ),

            // StreamBuilder(
            //   initialData: counterCubit.startValue,
            //   stream: counterCubit.stream,
            //   builder: (context, snapshot) {
            //     return Text(
            //       '${snapshot.data}',
            //       style: const TextStyle(fontSize: 30),
            //     );
            //   },
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {
                      counterCubit.increment();
                    },
                    icon: const Icon(Icons.add)),
                IconButton(
                    onPressed: () {
                      counterCubit.decrement();
                    },
                    icon: const Icon(Icons.remove))
              ],
            )
          ],
        ));
  }
}

//  
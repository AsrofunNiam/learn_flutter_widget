import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_flutter_widget/view/main_view_bloc/consumer_bloc/counter_one.dart';

class ViewConsumerOne extends StatelessWidget {
  const ViewConsumerOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CounterConsumerCubit counterConsumerCubit = CounterConsumerCubit();
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Consummer bloc One")),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocConsumer<CounterConsumerCubit, int>(
              bloc: counterConsumerCubit,
              listener: (context, state) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    duration: const Duration(milliseconds: 50),
                    content: Text('Build Nummber $state this number Genap ')));
              },
              listenWhen: (previous, current) { // condition runninng notif ini listener mode % 2
                if (current % 2 == 0) {
                  return true;
                } else {
                  return false;
                }
              },

              buildWhen: (previous, current) { // condition running build value in builder 
                if (current >= 5) {
                  return true;
                } else{
                  return false;
                }
              },
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {
                      counterConsumerCubit.increment();
                    },
                    icon: const Icon(Icons.add)),
                IconButton(
                    onPressed: () {
                      counterConsumerCubit.decrement();
                    },
                    icon: const Icon(Icons.remove))
              ],
            )
          ],
        ));
  }
}

// Consummer bloc di gunakajkn unutk marge func bloc 
//  di sini notif(BlocListener ) and get data (BlocBuilder) di lakukan di bloConsumer 

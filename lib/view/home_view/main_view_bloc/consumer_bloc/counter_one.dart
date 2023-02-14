import 'package:bloc/bloc.dart';

class CounterConsumerCubit extends Cubit<int> {
  int startValue;
  CounterConsumerCubit({this.startValue = 1}) : super(startValue);

  void increment() {
    emit(state + 1);
  }

  void decrement() {
    emit(state - 1);
  }
}

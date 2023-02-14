import 'package:bloc/bloc.dart';

class CounterListenerOne extends Cubit<int> {
  int startValue;
  CounterListenerOne({this.startValue = 3}) : super(startValue);

  void increment() {
    emit(state + 2);
  }

  void decrement() {
    emit(state - 1);
  }
}

import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  int startValue;
  CounterCubit({this.startValue = 3}) : super(startValue);

  void increment() {
    emit(state + 1);
  }

  void decrement() {
    emit(state - 1);
  }
}

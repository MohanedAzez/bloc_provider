import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  int counter = 0;

  void increment() {
    emit(CounterInitial());
    counter ++;
    emit(CounterIncrement());
  }
  
  void deincrement() {
    emit(CounterInitial());
    counter --;
    emit(CounterDeincrement());
  }

}

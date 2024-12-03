//CUBIT: Simplified version of BLoC for easy state management
//Let's create our own counter cubit

import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  //constructor: get initial state
  CounterCubit(super.initialState);

  //method to increment counter
  void increment() => emit(state + 1);

  //method to decrement counter
  void decrement() => emit(state - 1);
}

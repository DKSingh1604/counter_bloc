//CUBIT: Simplified version of BLoC for easy state management
//Let's create our own counter cubit

import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  //constructor: to get initial state
  CounterCubit(super.initialState);

  //function to increment counter
  void increment() => emit(state + 1);

  //function to decrement counter
  void decrement() => emit(state - 1);

  //on state change
  @override
  void onChange(Change<int> change) {
    super.onChange(change);

    print("change: " + change.toString());
  }
}

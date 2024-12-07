//Responsible for providing CounterCubit to Counter view (UI)

//Use BLoC Provider

import 'package:counter_bloc/counter/counter_cubit.dart';
import 'package:counter_bloc/counter/counter_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    //bloc provider
    return BlocProvider(
      create: (context) => CounterCubit(0),
      child: BlocListener<CounterCubit, int>(
        listener: (context, state) {
          //show a pop up box when it reaches 10
          if (state % 10 == 0) {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                content: Text("$state reached!"),
              ),
            );
          }
        },

        //counter view
        child: const CounterView(),
      ),
    );
  }
}

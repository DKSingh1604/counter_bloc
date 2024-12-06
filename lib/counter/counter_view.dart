//RESPONSIBLE FOR UI
//USE Bloc Builder

import 'package:counter_bloc/counter/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Body
      body: BlocBuilder<CounterCubit, int>(
        builder: (context, state) {
          return Center(
            child: Text(
              state.toString(),
              style: TextStyle(fontSize: 50),
            ),
          );
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          //increment button
          FloatingActionButton(
            onPressed: () => context.read<CounterCubit>().increment(),
            child: Icon(Icons.add),
          ),

          SizedBox(height: 20),

          //decrement button
          FloatingActionButton(
            onPressed: () => context.read<CounterCubit>().decrement,
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}

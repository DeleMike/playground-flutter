import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:playground/bloc_consumer/cubit/counter_consumer_cubit_cubit.dart';

class CounterBlocConsumer extends StatelessWidget {
  const CounterBlocConsumer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var colors = Colors.red;
    return Scaffold(
      appBar: AppBar(title: Text('Stream Consumer')),
      body: BlocConsumer<CounterConsumerCubitCubit, int>(
        listener: (context, count) {
          if (count > 10) {
            print('Number is greater than 10');
            colors = Colors.indigo;
          } else if (count > 5) {
            print('Number is greater than 10');
            colors = Colors.green;
          } else {
            colors = Colors.red;
          }
        },
        // buildWhen: (context, state) {},
        builder: (context, count) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$count",
                  style: TextStyle(fontSize: 50, color: colors[count * 100]),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () => context.read<CounterConsumerCubitCubit>().increment(),
                    child: Text('Add'),
                  ),
                ),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () => context.read<CounterConsumerCubitCubit>().decrement(),
                    child: Text('Subtract'),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

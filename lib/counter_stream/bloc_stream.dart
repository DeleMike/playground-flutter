import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/counter_bloc.dart';

class BlocStream extends StatelessWidget {
  const BlocStream({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final duration = context.select((CounterBloc value) => value.state.duration);
    return Scaffold(
        appBar: AppBar(title: Text('Stream Counter')),
        body: BlocBuilder<CounterBloc, CounterState>(
          buildWhen: (previous, current) => previous.runtimeType != current.runtimeType,
          builder: (context, state) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '$duration',
                    style: TextStyle(fontSize: 50),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () => context.read<CounterBloc>().add(CounterStarted(duration: duration)),
                      child: Text('Start Stream Counter'),
                    ),
                  ),
                ],
              ),
            );
          },
        ));
  }
}

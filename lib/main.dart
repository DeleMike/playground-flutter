import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:playground/bloc_consumer/cubit/counter_consumer_cubit_cubit.dart';
import 'package:playground/counter_stream/bloc/counter_bloc.dart';

import 'counter_stream/bloc_stream.dart';
import 'bloc_consumer/counter_bloc_consumer.dart';
import 'counter_stream/ticker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => CounterBloc(ticker: Ticker()),
        ),
        BlocProvider(
          create: (_) => CounterConsumerCubitCubit(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter PlayGround',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => SelectBlocType(),
          '/bloc-stream': (context) => BlocStream(),
          '/counter-bloc-consumer': (context) => CounterBlocConsumer()
        },
      ),
    );
  }
}

class SelectBlocType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bloc Samples')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Work with streams
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/bloc-stream');
              },
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Text('Bloc Stream'),
              ),
            ),

            // Work with bloc consumer
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/counter-bloc-consumer');
              },
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Text('Bloc Consumer'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

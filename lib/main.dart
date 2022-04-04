import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:playground/counter_stream/bloc/counter_bloc.dart';

import './counter_stream/bloc_stream.dart';
import 'counter_stream/ticker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterBloc(ticker: Ticker()),
      child: MaterialApp(
        title: 'Flutter PlayGround',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: '/',
        routes: {'/': (context) => SelectBlocType(), '/bloc-stream': (context) => BlocStream()},
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
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/bloc-stream');
              },
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Text('Bloc Stream'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

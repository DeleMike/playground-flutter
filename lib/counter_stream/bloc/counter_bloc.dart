import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../ticker.dart';

part 'counter_state.dart';
part 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  final Ticker _ticker;
  static const int _duration = 1;

  StreamSubscription<int> _tickerSubscription;

  CounterBloc({Ticker ticker})
      : _ticker = ticker,
        super(CounterInitial(_duration)) {
    on<CounterStarted>(_onStarted);
    on<CounterTicked>(_onTicked);
  }

  @override
  Future<void> close() {
    _tickerSubscription.cancel();
    return super.close();
  }

  void _onStarted(CounterStarted event, Emitter<CounterState> emit) {
    emit(CounterRunning(event.duration));
    // _tickerSubscription.cancel();
    _tickerSubscription = _ticker.tick(ticks: event.duration).listen((duration) {
      add(CounterTicked(duration: duration));
    });
  }

  void _onTicked(CounterTicked event, Emitter<CounterState> emit) {
    emit(event.duration > 0 ? CounterRunning(event.duration) : CounterCompleted());
  }
}

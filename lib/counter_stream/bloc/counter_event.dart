part of 'counter_bloc.dart';

abstract class CounterEvent extends Equatable {
  const CounterEvent();

  @override
  List<Object> get props => [];
}

// counter started
class CounterStarted extends CounterEvent {
  final int duration;
  const CounterStarted({@required this.duration});
}

//counter ticked
class CounterTicked extends CounterEvent {
  final int duration;
  const CounterTicked({@required this.duration});

  @override
  List<Object> get props => [duration];
}

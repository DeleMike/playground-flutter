part of 'counter_bloc.dart';

abstract class CounterState extends Equatable {
  final int duration;
  const CounterState(this.duration);

  @override
  List<Object> get props => [duration];
}

// initial state
class CounterInitial extends CounterState {
  CounterInitial(int duration) : super(duration);

  @override
  String toString() => 'CounterInitial { duration: $duration}';
}

// running(ticking) state
class CounterRunning extends CounterState {
  CounterRunning(int duration) : super(duration);

  @override
  String toString() => 'CounterRunning { duration: $duration}';
}

//runned(completed) state
class CounterCompleted extends CounterState {
  CounterCompleted() : super(0);

  String toString() => 'CounterCompleted { duration: $duration}';
}

part of 'counter_consumer_bloc.dart';

abstract class CounterConsumerEvent extends Equatable {
  const CounterConsumerEvent();

  @override
  List<Object> get props => [];
}

class IncrementEvent extends CounterConsumerEvent {}

class DecrementEvent extends CounterConsumerEvent{}

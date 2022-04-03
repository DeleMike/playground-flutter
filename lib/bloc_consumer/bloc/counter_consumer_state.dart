part of 'counter_consumer_bloc.dart';

abstract class CounterConsumerState extends Equatable {
  const CounterConsumerState(this.counter);

  final int counter;

  @override
  List<Object> get props => [];
}

class CounterConsumerInitial extends CounterConsumerState {
  CounterConsumerInitial(int counter) : super(counter);
}

class CounterConsumerAdded extends CounterConsumerState {
  CounterConsumerAdded(int counter) : super(counter);
}

class CounterConsumerSubtracted extends CounterConsumerState {
  CounterConsumerSubtracted(int counter) : super(counter);

}

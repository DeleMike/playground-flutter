import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_consumer_event.dart';
part 'counter_consumer_state.dart';

class CounterConsumerBloc extends Bloc<CounterConsumerEvent, CounterConsumerState> {
  CounterConsumerBloc() : super(CounterConsumerInitial(0)) {
    on<IncrementEvent>(_onCounterAdded);
    on<DecrementEvent>(_onCounterSubtracted);
  }

  void _onCounterAdded(IncrementEvent event, Emitter<CounterConsumerState> emit) {
    emit(CounterConsumerAdded(state.counter + 1));
  }

  void _onCounterSubtracted(DecrementEvent event, Emitter<CounterConsumerState> emit) {
    if (state.counter >= 0) {
      emit(CounterConsumerSubtracted(state.counter));
    }

    emit(CounterConsumerSubtracted(0));
  }
}

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(InitialState()) {
    on<Increment>((event, emit) {
      final currentStateValue = state.count;
      final IncrementedValue = currentStateValue + 1;

      return emit(CounterState(count: IncrementedValue));
    });

    on<Decrement>((event, emit) {
      final currentStateValue = state.count;
      final decrementedValue = currentStateValue - 1;

      return emit(CounterState(count: decrementedValue));
    });
  }
}

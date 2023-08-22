import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:test2/core/services.dart';
import 'package:test2/domain/usecases/add_usecase.dart';
import 'package:test2/domain/usecases/get_usecase.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(InitialCounterState()) {
    on<InitCounterEvent>(_onInitCounterEvent);
    on<TapCounterEvent>(_onTapCounterEvent);
  }

  FutureOr<void> _onInitCounterEvent(
    InitCounterEvent event,
    Emitter<CounterState> emit,
  ) async {
    final GetUseCase getUseCase = services<GetUseCase>();
    final int count0 = await getUseCase.call(unit);

    emit(DataCounterState(count: count0));
  }

  FutureOr<void> _onTapCounterEvent(
    TapCounterEvent event,
    Emitter<CounterState> emit,
  ) async {
    final AddUseCase addUseCase = services<AddUseCase>();
    final int count0 = await addUseCase.call(unit);

    emit(DataCounterState(count: count0));
  }
}

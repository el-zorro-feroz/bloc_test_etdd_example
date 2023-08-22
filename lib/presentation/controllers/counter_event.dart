part of 'counter_bloc.dart';

sealed class CounterEvent extends Equatable {
  const CounterEvent();

  @override
  List<Object> get props => [];
}

final class InitCounterEvent extends CounterEvent {}

final class TapCounterEvent extends CounterEvent {}

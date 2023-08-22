// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'counter_bloc.dart';

sealed class CounterState extends Equatable {
  const CounterState();

  @override
  List<Object> get props => [];
}

final class InitialCounterState extends CounterState {}

final class DataCounterState extends CounterState {
  final int count;

  @override
  List<Object> get props => [count];

  const DataCounterState({
    required this.count,
  });
}

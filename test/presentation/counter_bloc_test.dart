import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test2/presentation/controllers/counter_bloc.dart';

import '../services/services.dart';

void main() async {
  await initTestServices();

  group('Counter Bloc', () {
    late CounterBloc counterBloc;

    blocTest(
      'Init Test',
      setUp: () => counterBloc = CounterBloc(),
      build: () => counterBloc,
      act: (bloc) => bloc.add(InitCounterEvent()),
      expect: () => [
        isA<DataCounterState>().having((state) => state.count, 'is zero after init', 0),
      ],
    );

    blocTest(
      'Add Test',
      setUp: () => counterBloc = CounterBloc(),
      build: () => counterBloc,
      act: (bloc) => bloc.add(TapCounterEvent()),
      expect: () => [
        isA<DataCounterState>().having((state) => state.count, 'is one after one call', 1),
      ],
    );

    blocTest(
      'Three add Test',
      setUp: () => counterBloc = CounterBloc(),
      build: () => counterBloc,
      act: (bloc) => [
        bloc.add(TapCounterEvent()),
        bloc.add(TapCounterEvent()),
        bloc.add(TapCounterEvent()),
      ],
      expect: () => [
        isA<DataCounterState>().having((state) => state.count, 'is two after one call', 2),
        isA<DataCounterState>().having((state) => state.count, 'is three after two call', 3),
        isA<DataCounterState>().having((state) => state.count, 'is four after three call', 4),
      ],
    );
  });
}

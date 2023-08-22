import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';

import '../usecases/usecases.mocks.dart';

int _counter = 0;

MockAddUseCase arrangeMockAddUseCase() {
  MockAddUseCase mockAddUseCase = MockAddUseCase();

  when(mockAddUseCase.call(unit)).thenAnswer((_) {
    _counter = _counter + 1;
    return _counter;
  });

  return mockAddUseCase;
}

MockGetUseCase arrangeMockGetUseCase() {
  MockGetUseCase mockGetUseCase = MockGetUseCase();

  when(mockGetUseCase.call(unit)).thenAnswer((_) {
    return _counter;
  });

  return mockGetUseCase;
}

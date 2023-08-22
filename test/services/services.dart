import 'dart:async';

import 'package:test2/core/services.dart';
import 'package:test2/domain/usecases/add_usecase.dart';
import 'package:test2/domain/usecases/get_usecase.dart';

import 'counter_services.dart';

FutureOr<void> initTestServices() {
  services.registerLazySingleton<AddUseCase>(() => arrangeMockAddUseCase());
  services.registerLazySingleton<GetUseCase>(() => arrangeMockGetUseCase());
}

import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:test2/data/repository.dart';
import 'package:test2/domain/usecases/add_usecase.dart';
import 'package:test2/domain/usecases/get_usecase.dart';
import 'package:test2/presentation/controllers/counter_bloc.dart';
import 'package:test2/presentation/home.dart';

final GetIt services = GetIt.I;

FutureOr<void> initServices() async {
  services.registerLazySingleton<HomePage>(() => const HomePage());
  services.registerLazySingleton<CounterBloc>(() => CounterBloc());
  services.registerLazySingleton<Repository>(() => Repository());
  services.registerLazySingleton<AddUseCase>(() => AddUseCase());
  services.registerLazySingleton<GetUseCase>(() => GetUseCase());
}

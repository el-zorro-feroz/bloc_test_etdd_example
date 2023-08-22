import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:test2/core/services.dart';
import 'package:test2/core/usecase.dart';
import 'package:test2/data/repository.dart';

class AddUseCase extends UseCase<int, Unit> {
  @override
  FutureOr<int> call(Unit p) {
    final Repository repository = services<Repository>();
    repository.add();

    return repository.get();
  }
}

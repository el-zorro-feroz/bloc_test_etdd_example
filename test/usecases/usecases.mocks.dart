// Mocks generated by Mockito 5.4.2 from annotations
// in test2/test/usecases/usecases.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:dartz/dartz.dart' as _i4;
import 'package:mockito/mockito.dart' as _i1;
import 'package:test2/domain/usecases/add_usecase.dart' as _i2;
import 'package:test2/domain/usecases/get_usecase.dart' as _i5;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

/// A class which mocks [AddUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockAddUseCase extends _i1.Mock implements _i2.AddUseCase {
  @override
  _i3.FutureOr<int> call(_i4.Unit? p) => (super.noSuchMethod(
        Invocation.method(
          #call,
          [p],
        ),
        returnValue: _i3.Future<int>.value(0),
        returnValueForMissingStub: _i3.Future<int>.value(0),
      ) as _i3.FutureOr<int>);
}

/// A class which mocks [GetUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetUseCase extends _i1.Mock implements _i5.GetUseCase {
  @override
  _i3.FutureOr<int> call(_i4.Unit? p) => (super.noSuchMethod(
        Invocation.method(
          #call,
          [p],
        ),
        returnValue: _i3.Future<int>.value(0),
        returnValueForMissingStub: _i3.Future<int>.value(0),
      ) as _i3.FutureOr<int>);
}
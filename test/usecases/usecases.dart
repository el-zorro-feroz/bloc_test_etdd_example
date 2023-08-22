import 'package:mockito/annotations.dart';
import 'package:test2/domain/usecases/add_usecase.dart';
import 'package:test2/domain/usecases/get_usecase.dart';

@GenerateNiceMocks([MockSpec<AddUseCase>(), MockSpec<GetUseCase>()])
import 'usecases.mocks.dart';

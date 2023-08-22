import 'package:flutter/material.dart';
import 'package:test2/core/services.dart';
import 'package:test2/presentation/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initServices();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final HomePage homePage = services<HomePage>();

    return MaterialApp(
      home: homePage,
    );
  }
}

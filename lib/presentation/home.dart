import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test2/core/services.dart';
import 'package:test2/presentation/controllers/counter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CounterBloc, CounterState>(
        bloc: services<CounterBloc>(),
        builder: (context, state) {
          switch (state) {
            case InitialCounterState():
              return const InitialHomeWidget();
            case DataCounterState():
              final DataCounterState state0 = state;
              return DataHomeWidget(
                count: state0.count,
                onTap: () => services<CounterBloc>().add(TapCounterEvent()),
              );
          }
        },
      ),
    );
  }
}

class InitialHomeWidget extends StatelessWidget {
  const InitialHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

class DataHomeWidget extends StatelessWidget {
  final int count;
  final Function()? onTap;

  const DataHomeWidget({
    super.key,
    required this.count,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Center(
            child: Text(count.toString()),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(
            onPressed: onTap,
            child: const Text(
              'Click',
            ),
          ),
        ),
      ],
    );
  }
}

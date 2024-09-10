import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/counter_provider.dart';

class CounterDisplay extends StatelessWidget {
  const CounterDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CounterProvider>(
      builder: (context, counterProvider, child) {
        return Text(
          '${counterProvider.count}',
          style: const TextStyle(
            fontSize: 42,
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.italic,
          ),
        );
      },
    );
  }
}

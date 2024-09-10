import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/counter_provider.dart';
import '../widgets/counter_display.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CounterDisplay(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer<CounterProvider>(
                  builder: (context, counterProvider, child) {
                    return ElevatedButton(
                      onPressed: counterProvider.count > 0
                          ? () {
                              Provider.of<CounterProvider>(context,
                                      listen: false)
                                  .decrement();
                            }
                          : null,
                      child: const Text('-'),
                    );
                  },
                ),
                const SizedBox(
                  width: 15,
                ),
                ElevatedButton(
                  onPressed: () {
                    Provider.of<CounterProvider>(context, listen: false)
                        .increment();
                  },
                  child: const Text('+'),
                ),
              ],
            ),
            const Text(
              'You have pushed the button this many times :)',
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../models/counter.dart';

class CounterProvider with ChangeNotifier {
  final Counter _counter = Counter();

  int get count => _counter.count;

  void increment() {
    _counter.increment();
    notifyListeners();
  }

  void decrement() {
    _counter.decrement();
    notifyListeners();
  }
}

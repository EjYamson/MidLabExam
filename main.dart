import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  final int counter;
  final VoidCallback onIncrement;

  const Counter({super.key,
  required this.counter,
  required this.onIncrement});

  get elements => null;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget> [
        ElevatedButton(
          onPressed: onIncrement,
          child: const Text('Increment'),
        ),
        const SizedBox(width: 16),
        Text('Count: $counter'),
      ],
    );
  }
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
          _counter++;
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Counter(
          counter: _counter,
          onIncrement: _incrementCounter,
        ),
      ),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      home: CounterApp(),
    ),
  );
}
import 'package:flutter/material.dart';
import 'package:ios_test/screens/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => const MaterialApp(
      home: CounterScreen(),
    );
  }
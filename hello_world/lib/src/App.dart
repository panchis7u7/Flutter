import 'package:flutter/material.dart';
import 'package:hello_world/src/pages/HomePage.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Center(child: HomePage()),
  );
}

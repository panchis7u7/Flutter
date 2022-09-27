import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return (
      Scaffold(
        appBar: AppBar(
          title: const Text("Test Widget"),
        ),
        body: const Center(
          child: Text("Navigated to the test widget."),
        ),
      )
    );
  }
}

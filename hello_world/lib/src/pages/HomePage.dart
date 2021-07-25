import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hola Mundo!"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hola como estas")
          ],
        ),
      )
    );
  }
}

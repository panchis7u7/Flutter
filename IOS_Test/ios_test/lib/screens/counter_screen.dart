import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  void increase() => setState(() => counter++);
  void decrease() => setState(() => counter--);
  void reset() => setState(() => counter = 0);

  @override
  Widget build(BuildContext context) {
    const TextStyle textSyle = TextStyle(fontSize: 30);

    return Scaffold(
        //backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: const Text("CounterScreen"),
          elevation: 5,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text("Number of Clicks:", style: textSyle),
              Text('$counter', style: textSyle)
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: ActionButtonBar(
          onDecrementFabPressed: decrease,
          onIncrementFabPressed: increase,
          onResetFabPressed: reset,
        ));
  }
}

class ActionButtonBar extends StatelessWidget {
  final Function onIncrementFabPressed;
  final Function onDecrementFabPressed;
  final Function onResetFabPressed;

  const ActionButtonBar(
      {Key? key,
      required this.onIncrementFabPressed,
      required this.onDecrementFabPressed,
      required this.onResetFabPressed
      }): super(key: key);

  @override
  Widget build(BuildContext context) =>
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
        FloatingActionButton(
          onPressed: () => onDecrementFabPressed(),
          child: const Icon(Icons.exposure_minus_1),
        ),
        FloatingActionButton(
          onPressed: () => onResetFabPressed(),
          child: const Icon(Icons.restore),
        ),
        FloatingActionButton(
          onPressed: () => onIncrementFabPressed(),
          child: const Icon(Icons.exposure_plus_1),
        ),
      ]);
}

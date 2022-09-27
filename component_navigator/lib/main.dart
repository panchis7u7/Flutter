import 'package:component_navigator/router/routes.dart';
import 'package:component_navigator/screens/menu.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: "Components Navigator App",
    initialRoute: "Home",
    routes: AppRoutes.getAppRoutes(),
    onGenerateRoute: (settings) => AppRoutes.onGenerateRoute(settings, const Menu()),
    theme: ThemeData.dark().copyWith(
      primaryColor: Colors.indigo
    )
  );
}

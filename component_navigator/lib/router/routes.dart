import 'package:component_navigator/models/menu_option.dart';
import 'package:component_navigator/screens/menu.dart';
import 'package:component_navigator/screens/menu_card.dart';
import 'package:component_navigator/screens/test.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const root = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(route: 'Home', name: 'Home Screen', screen: const Menu(), icon: Icons.home),
    MenuOption(route: 'LVT1', name: 'Listview Type 1', screen: const Test(), icon: Icons.route),
    MenuOption(route: 'LVT2', name: 'ListView Type 2', screen: const Test(), icon: Icons.route),
    MenuOption(route: 'Alerts', name: 'Alerts', screen: const Test(), icon: Icons.notifications_active),
    MenuOption(route: 'Cards', name: 'Cards', screen: const CardScreen(), icon: Icons.add_card_sharp),
  ];

  static onGenerateRoute(RouteSettings settings, Widget defaultWidget) =>
      MaterialPageRoute(builder: (context) => defaultWidget);

  static Map<String, Widget Function(BuildContext)> getAppRoutes() =>
      Map.fromEntries(menuOptions.map((option) =>
          MapEntry(option.route, (BuildContext ctx) => option.screen))); 
}

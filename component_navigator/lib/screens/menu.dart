import 'package:component_navigator/router/routes.dart';
import 'package:component_navigator/theme/app_theme.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu"),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Icon(AppRoutes.menuOptions[index].icon, color: AppTheme.primary,),
          trailing: const Icon(Icons.arrow_forward_ios),
          title: Text(AppRoutes.menuOptions[index].name),
          onTap: () => Navigator.pushNamed(context, AppRoutes.menuOptions[index].route),
        ), 
        separatorBuilder: (_, __) => const Divider(), 
        itemCount: AppRoutes.menuOptions.length
      )
    );
  }
}

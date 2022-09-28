import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CustomCard01 extends StatelessWidget {
  const CustomCard01({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: ListTile(
              leading: Icon(
                Icons.photo_album,
                color: AppTheme.primary,
              ),
              title: Text("ListTitle 1."),
              subtitle: Text(
                  "Do amet ullamco veniam aliqua do aliquip proident adipisicing."),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  onPressed: () {},
                  child: const Text("Cancel"),
                ),
                TextButton(onPressed: () {}, child: const Text("Ok"))
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomCard02 extends StatelessWidget {
  final String imageURL;

  const CustomCard02({Key? key, required this.imageURL}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      //shadowColor: Colors.blueGrey,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(imageURL),
            placeholder: const AssetImage("assets/loading.gif"),
            width: double.infinity,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          )
        ],
      ),
    );
  }
}

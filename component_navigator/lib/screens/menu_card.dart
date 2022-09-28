import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Widget"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        children: const <Widget> [
          CustomCard01(),
          SizedBox(height: 10),
          CustomCard02(imageURL: "https://images.pexels.com/photos/1463295/pexels-photo-1463295.jpeg?cs=srgb&dl=pexels-frans-van-heerden-1463295.jpg&fm=jpg"),
          SizedBox(height: 10),
          CustomCard02(imageURL: "https://www.mpg.de/18490336/original-1656406663.jpg?t=eyJ3aWR0aCI6MTIwMCwiaGVpZ2h0IjpudWxsLCJmaXQiOm51bGwsIm9ial9pZCI6MTg0OTAzMzZ9--9fae20441fec6fc549b18c2df95372b99979a919"),
          SizedBox(height: 10),
          CustomCard02(imageURL: "https://indonesian-parrot-project.org/wp-content/uploads/2022/09/Chattering-Lory-on-Morotai.jpg"),
          SizedBox(height: 10)
        ],
      )
    );
  }
}

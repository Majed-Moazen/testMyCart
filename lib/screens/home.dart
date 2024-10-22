import 'package:flutter/material.dart';

import '../model/category.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text('Find Products'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
            children: <Widget>[
              Category(
                title: 'Frash Fruits & Vegetable',
                imagePath: 'assets/images/pngfuel1.png',
                color: Color(0x1A53B175),
              ),
              Category(
                  title: 'Cooking Oil & Ghee',
                  imagePath: 'assets/images/pngfuel2.png',
                  color: Color(0x1AF8A44C)),
              Category(
                  title: 'Meat & Fish',
                  imagePath: 'assets/images/pngfuel3.png',
                  color: Color(0x40F7A593)),
              Category(
                  title: 'Bakery & Snacks',
                  imagePath: 'assets/images/pngfuel4.png',
                  color: Color(0x40D3B0E0)),
            ],
          ),
        ),
      );

  }
}

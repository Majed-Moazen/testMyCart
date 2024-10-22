import 'package:flutter/material.dart';
import 'package:untitled27/screens/my_cart.dart';

class Category extends StatelessWidget {
  Category({required this.title,required this.imagePath,required this.color});
  String title;
  String imagePath;
  Color color;

  @override
  Widget build(BuildContext context) {

      return InkWell(
        onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context)=> MyCart())),
        child: Container(
          width: 174.5,
          height: 189.11,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(18.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                imagePath,
                height: 80.0,
              ),
              SizedBox(height: 16.0),
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      );

  }
}

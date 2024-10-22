import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:untitled27/screens/home.dart';
import 'package:untitled27/screens/my_cart.dart';

class HelloScreen extends StatelessWidget {
  const HelloScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: AssetImage('assets/images/man.png'),
            fit: BoxFit.fitWidth,
            width: double.infinity,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image(image: AssetImage('assets/images/img.png')),
              Text(
                'Welcome \n into our store',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 48),
              ),
              Container(
                margin: EdgeInsetsDirectional.only(
                    start: 15.25, end: 15.25, bottom: 100, top: 15.25),
                clipBehavior: Clip.hardEdge,
                decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(19)),
                child: MaterialButton(
                  minWidth: 353,
                  height: 67,
                  color: Color(0xff53B175),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) =>Home(),));
                  },
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

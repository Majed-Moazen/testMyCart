import 'package:flutter/material.dart';

class Completed extends StatelessWidget {
  const Completed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
         padding: EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/images/sucsses.png'),
              width: 269.08,
              height: 240.31,
              fit: BoxFit.cover,
            ),
            Text(
              'Your Order has been accepted',
              maxLines: 2,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins'),
            ),
            Text('Your items has been placcd and is on it’s way to being processed',
                maxLines: 2,
                textAlign: TextAlign.center,

                style: TextStyle(
                    color: Color(0xff7C7C7C),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins')),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:untitled27/screens/sucsses.dart';

import '../model/item.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}


class _MyCartState extends State<MyCart> {
  double count1 = 0, count2 = 0, count3 = 0;
  List<double> price = [4.99, 1.99, 3.00];
  double sumTotal = 0;
  void updateTotal() {
    setState(() {
      sumTotal =(count1) + (count2) + (count3);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading:SizedBox(),
            shape: Border.symmetric(
              horizontal: BorderSide(color: Color(0xffE2E2E2))),
          title: Text(
            'My Cart',
            style: TextStyle(
              height: 18,
              fontSize: 20,
              fontFamily: 'Gilroy-Bold',
            ),
          ),
        ),
        body: Column(
          children: [
            Item(
              title: ' Bell Pepper Red',
              desc: '1kg, Price',
              path: 'assets/images/1.png',
              price: price[0],
              sumTotal: (countAll) {
                count1=countAll;
                updateTotal();
              },
            ),
            Item(
              sumTotal: (countAll) {
                count2=countAll;
                updateTotal();
              },
              title: 'Egg Chicken Red',
              desc: '4pcs, Price',
              path: 'assets/images/2.png',
              price: price[1],
            ),
            Item(
              title: 'Organic Bananas',
              desc: '12kg, Price',
              path: 'assets/images/3.png',
              sumTotal: (countAll) {
                count3=countAll;
                updateTotal();
              },

              price: price[2],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Total = ',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 100,
                ),
                Container(
                  width: 155,
                  height: 48,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffE2E2E2),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(19)),
                  ),
                  child: Center(
                    child: Text(
                      '\$' + sumTotal.toStringAsFixed(2),
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsetsDirectional.only(start: 15.25, end: 15.25),
              clipBehavior: Clip.hardEdge,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(19)),
              child: MaterialButton(
                minWidth: 353,
                height: 61,
                color: Color(0xff53B175),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Completed(),
                      ));
                },
                child: Text(
                  'confirm order',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ));
  }
}

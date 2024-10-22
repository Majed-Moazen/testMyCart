import 'dart:io';

import 'package:flutter/material.dart';
import 'package:untitled27/screens/hello.dart';
import 'package:untitled27/screens/home.dart';
import 'package:untitled27/screens/my_cart.dart';

void main() {
runApp(const Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: HelloScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

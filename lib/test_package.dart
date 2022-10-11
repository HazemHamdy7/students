import 'package:dartz/dartz_streaming.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:students/core/constant/image_asset.dart';

class Test extends StatelessWidget {
  Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  //stops: [1, 2, 0.50, 0.5],
                  begin: Alignment.topLeft,
//end: Alignment.bottomCenter,
                  colors: [
                Color(0xff027DFD),
                Color.fromARGB(255, 116, 3, 88),
                Color.fromARGB(255, 72, 90, 109),
                Color.fromARGB(255, 13, 131, 144),
                Color.fromARGB(255, 166, 181, 141),
                Color.fromARGB(255, 224, 122, 14),
                Color.fromARGB(255, 244, 71, 8),
              ])),
          child: Column(
            children: [],
          )),
    );
  }
}

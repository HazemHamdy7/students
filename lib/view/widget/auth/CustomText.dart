import 'package:flutter/material.dart';

class CustomTextTitelAuth extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight fontWeight;
  final double fontSize;


  const CustomTextTitelAuth(
      {Key? key,
      required this.text,
      required this.color,
      required this.fontWeight, required this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: (Text(text,
          style:
              TextStyle(color: color, fontSize: 26, fontWeight: fontWeight))),
    );
  }
}

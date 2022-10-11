import 'package:flutter/material.dart';
import 'package:students/core/constant/color.dart';

class CustomButtonLanguage extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const CustomButtonLanguage({Key? key, required this.text, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      width: double.infinity,
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: AppColor.buttunColor,
        onPressed: onPressed,
        textColor: Colors.white,
        child: Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

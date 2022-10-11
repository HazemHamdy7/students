import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:students/core/constant/color.dart';
import 'package:students/core/constant/name_routes.dart';

class CustomTextSignOutOrLogin extends StatelessWidget {
  final String text;
  final String text2;
  final void Function() onTap;

  const CustomTextSignOutOrLogin(
      {Key? key, required this.text, required this.text2, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text),
        const SizedBox(
          width: 20,
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            text2,
            style: const TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: AppColor.buttunColor),
          ),
        )
      ],
    );
  }
}

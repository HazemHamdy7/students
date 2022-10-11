import 'package:flutter/material.dart';
import 'package:students/core/constant/color.dart';

class CustomTextBodyAuhth extends StatelessWidget {
  final String text;
  const CustomTextBodyAuhth({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: Theme.of(context)
            .textTheme
            .bodyText2!
            .copyWith(color: AppColor.gray),
      ),
    );
  }
}

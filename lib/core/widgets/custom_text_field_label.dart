import 'package:flutter/material.dart';

import '../utils/app_style.dart';

class CustomTextFieldLabel extends StatelessWidget {
  const CustomTextFieldLabel({super.key, required this.text});
 final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: AppStyle.rubik400Size16);
  }
}

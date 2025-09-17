import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_style.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        color: AppColors.lightGrey,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: AppStyle.rubik400Size16.copyWith(
            color: AppColors.grey,
            fontWeight: FontWeight.w300,
          ),
        ),
        style: AppStyle.rubik500Size16.copyWith(
          fontSize: 20
        ),
      ),
    );
  }
}

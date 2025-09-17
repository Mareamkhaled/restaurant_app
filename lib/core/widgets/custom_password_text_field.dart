import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_style.dart';

class CustomPasswordTextField extends StatefulWidget {
  const CustomPasswordTextField({super.key, required this.hintText});
  final String hintText;

  @override
  State<CustomPasswordTextField> createState() =>
      _CustomPasswordTextFieldState();
}

class _CustomPasswordTextFieldState extends State<CustomPasswordTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        color: AppColors.lightGrey,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      child: TextField(
        obscureText: _obscureText,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
            icon: _obscureText
                ? const Icon(
                    Icons.visibility_off_outlined,
                    color: AppColors.lightBlack,
                  )
                :const Icon(
                    Icons.visibility_outlined,
                    color: AppColors.lightBlack,
                  ),
          ),
          border: InputBorder.none,
          hintText: widget.hintText,

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

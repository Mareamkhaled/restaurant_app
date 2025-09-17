import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

import '../utils/app_style.dart';

class AuthOptions extends StatelessWidget {
  const AuthOptions({super.key, required this.text, required this.authWord, required this.onPressed});
  final String text ;
  final String authWord ;
  final Function() onPressed ;
  @override
  Widget build(BuildContext context) {
    return  Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text, style: AppStyle.rubik400Size14),
              TextButton(
                onPressed: onPressed,
                child: Text(
                  authWord,
                  style: AppStyle.rubik400Size14.copyWith(
                    color: AppColors.orange,
                  ),
                ),
              ),
            ],
          );
  }
}
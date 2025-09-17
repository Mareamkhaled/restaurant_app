  import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.onTap});
  final String text ;
  final Function() onTap ;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
              onTap: onTap,
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.orange,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    text,
                    style: AppStyle.rubik500Size16.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            );
  }
}
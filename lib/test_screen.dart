import 'package:flutter/material.dart';

import 'core/utils/app_colors.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.black,
      body: Center(
        child: Text(
          'Test Screen',
          style: TextStyle(color: AppColors.white, fontSize: 24),
        ),
      ),
    );
  }
}

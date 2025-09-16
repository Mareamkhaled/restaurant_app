import 'package:flutter/material.dart';
import '../../../core/utils/app_colors.dart';
import '../widgets/splash_body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.orange,
      body: SplashBody(),
    );
  }
}

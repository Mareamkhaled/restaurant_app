import 'package:flutter/material.dart';

import '../../../core/functions/custom_navigation.dart';
import '../../../core/utils/app_images.dart';
import '../../../core/utils/app_strings.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5), () {
      // ignore: use_build_context_synchronously
      customNavigation(context, AppStrings.onBoardingSignUpScreen);
    });

    super.initState();
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Center(child: Image.asset(Assets.assetsImagesLogo));
  }
}

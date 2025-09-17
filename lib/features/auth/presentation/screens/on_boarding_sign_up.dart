import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_style.dart';
import '../../../../core/widgets/auth_options.dart';
import '../../../../core/widgets/custom_button.dart';

class OnBoardingSignUpScreen extends StatelessWidget {
  const OnBoardingSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Assets.assetsImagesHunterFoodLogo),
            const SizedBox(height: 20),
            Image.asset(Assets.assetsImagesSignup),
            const SizedBox(height: 20),
            Text(
              AppStrings.onBoardingSignUpTitle,
              style: AppStyle.rubik500Size26,
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                AppStrings.onBoardingSignUpDescription,
                textAlign: TextAlign.center,
                style: AppStyle.rubik400Size16,
              ),
            ),
            const SizedBox(height: 10),

            CustomButton(
              text: AppStrings.signUp,
              onTap: () {
                GoRouter.of(context).push(AppStrings.signUpScreen);
              },
            ),

            const SizedBox(height: 10),
            AuthOptions(
              text: AppStrings.haveAccount,
              authWord: AppStrings.login,
              onPressed: () {
                GoRouter.of(context).push(AppStrings.loginScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}

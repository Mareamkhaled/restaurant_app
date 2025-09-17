import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/widgets/auth_options.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_password_text_field.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../../../core/widgets/custom_text_field_label.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Assets.assetsImagesHunterFoodLogo),
            // SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 5),
                const CustomTextFieldLabel(text: AppStrings.signupUsername),
                const CustomTextField(hintText: "mariamah"),
                const SizedBox(height: 5),
                const CustomTextFieldLabel(text: AppStrings.signupEmail),
                const SizedBox(height: 5),
                const CustomTextField(hintText: "mariamah@gmail.com"),
                const SizedBox(height: 5),
                const CustomTextFieldLabel(text: AppStrings.signupYourAddress),
                const SizedBox(height: 5),
                const CustomTextField(hintText: "123 Street, City, Country"),
                const SizedBox(height: 5),
                const CustomTextFieldLabel(text: AppStrings.signupPassword),
                const SizedBox(height: 5),
                const CustomPasswordTextField(hintText: "123456"),
                const SizedBox(height: 5),
                const CustomTextFieldLabel(
                  text: AppStrings.signupConfirmPassword,
                ),
                const SizedBox(height: 5),
                const CustomPasswordTextField(hintText: "123456"),
                const SizedBox(height: 32),
                CustomButton(
                  text: AppStrings.signUp,
                  onTap: () {
                    //! button action
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
          ],
        ),
      ),
    );
  }
}

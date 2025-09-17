import 'package:go_router/go_router.dart';
import '../../features/auth/presentation/screens/log_in_screen.dart';
import '../../features/auth/presentation/screens/on_boarding_sign_up.dart';
import '../../features/auth/presentation/screens/sign_up_screen.dart';
import '../../features/splash/views/splash_screen.dart';
import '../../test_screen.dart';
import 'app_strings.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: AppStrings.splashScreen,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: AppStrings.testScreen,
      builder: (context, state) => const TestScreen(),
    ),
    GoRoute(
      path: AppStrings.onBoardingSignUpScreen,
      builder: (context, state) => const OnBoardingSignUpScreen(),
    ),
    GoRoute(
      path: AppStrings.signUpScreen,
      builder: (context, state) => const SignUpScreen(),
    ),
    GoRoute(
      path: AppStrings.loginScreen,
      builder: (context, state) => const LogInScreen(),
    ),
  ],
);

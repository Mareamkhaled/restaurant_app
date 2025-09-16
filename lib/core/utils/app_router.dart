import 'package:go_router/go_router.dart';
import '../../features/splash/views/splash_screen.dart';
import '../../test_screen.dart';
import 'app_strings.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(path: AppStrings.splashScreen, builder: (context, state) => const SplashScreen()),
    GoRoute(path: AppStrings.testScreen, builder: (context, state) => const TestScreen())
  ],
);

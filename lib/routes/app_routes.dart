
import 'package:get/get.dart';
import 'package:meditation_app_ui_community/presentation/auth/sign_up_sign_in/sign_in/binding/sign_in_binding.dart';
import 'package:meditation_app_ui_community/presentation/auth/sign_up_sign_in/sign_in/sign_in_screen.dart';
import 'package:meditation_app_ui_community/presentation/auth/splashScreen.dart';

class AppRoutes {
  static const String signInScreen = '/signInScreen';
  static const String splashScreen = '/splashScreen';

  static List<GetPage> pages = [
    GetPage(
      transition: Transition.rightToLeft,
      name: signInScreen,
      page: () => const SignInScreen(),
      bindings: [
        SignInBinding(),
      ],
    ),
    GetPage(
      transition: Transition.zoom,
      name: splashScreen,
      page: () => const Splashscreen(),
    ),
  ];
}

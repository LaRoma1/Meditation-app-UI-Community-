import 'package:get/get.dart';
import 'package:meditation_app_ui_community/presentation/auth/sign_up_sign_in/sign_in/sign_in_screen.dart';
import 'package:meditation_app_ui_community/presentation/auth/sign_up_sign_in/sign_in_sign_in_screen.dart';
import 'package:meditation_app_ui_community/presentation/auth/sign_up_sign_in/sign_up/sign_up_screen.dart';
import 'package:meditation_app_ui_community/presentation/auth/splashScreen.dart';
import 'package:meditation_app_ui_community/presentation/course_details/course_details_screen.dart';
import 'package:meditation_app_ui_community/presentation/music/music_screen.dart';
import 'package:meditation_app_ui_community/presentation/welcome/welcome_screen.dart';
import 'package:meditation_app_ui_community/presentation/choose_topic/choose_topic_screen.dart';
import 'package:meditation_app_ui_community/presentation/reminders/reminders_screen.dart';
import 'package:meditation_app_ui_community/presentation/home/home_screen.dart';

class AppRoutes {
  static const String signInScreen = '/signInScreen';
  static const String splashScreen = '/splashScreen';
  static const String signUpScreen = '/signUpScreen';
  static const String signInSignInScreen = '/signInSignInScreen';
  static const String welcomeScreen = '/welcomeScreen';
  static const String chooseTopicScreen = '/chooseTopicScreen'; 
  static const String remindersScreen = '/remindersScreen';
  static const String homeScreen = '/homeScreen';
  static const String courseDetailScreen = '/courseDetailScreen';
  static const String musicScreen = '/musicScreen';

  static List<GetPage> pages = [
    GetPage(
      transition: Transition.rightToLeft,
      name: signInScreen,
      page: () => const SignInScreen(),
    ),
    GetPage(
      transition: Transition.zoom,
      name: splashScreen,
      page: () => const Splashscreen(),
    ),
    GetPage(
      transition: Transition.zoom,
      name: signUpScreen,
      page: () => const SignUpScreen(),
    ),
    GetPage(
      transition: Transition.zoom,
      name: signInSignInScreen,
      page: () => const SignInSignInScreen(),
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: welcomeScreen,
      page: () => const WelcomeScreen(),
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: chooseTopicScreen,
      page: () => const ChooseTopicScreen(),
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: remindersScreen,
      page: () => const RemindersScreen(),
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: homeScreen,
      page: () => const HomeScreen(),
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: courseDetailScreen,
      page: () => const CourseDetailsScreen(),
    ),
    GetPage(
      transition: Transition.rightToLeft,
      name: musicScreen,
      page: () => const MusicScreen(),
    ),
  ];
}

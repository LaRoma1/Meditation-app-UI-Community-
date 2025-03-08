import 'package:flutter/material.dart';
import 'package:meditation_app_ui_community/common/widgets/custom_text.dart';
import 'package:meditation_app_ui_community/core/constants/image_constants.dart';
import 'package:get/get.dart';
import 'package:meditation_app_ui_community/routes/app_routes.dart';




class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 10), () {
      Get.offNamed(AppRoutes.signInSignInScreen);
    });
  }

  @override
 Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageConstants.splashBackground),
            fit: BoxFit.cover,
          ),
        ),
        child:  SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 66),
            child: Column(
              children: [
                
               
                 CustomText(
                  text: 'Meditation App',
                 
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    height: 2.2,
                  ),
                
                const Spacer(),
                // Vous pouvez ajouter d'autres widgets ici si nécessaire
              ],
            ),
          ),
        ),
      ),
    );
  }
}
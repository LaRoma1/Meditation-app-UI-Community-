import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation_app_ui_community/common/widgets/custom_button.dart';
import 'package:meditation_app_ui_community/common/widgets/custom_text.dart';
import 'package:meditation_app_ui_community/core/constants/image_constants.dart';
import 'package:meditation_app_ui_community/routes/app_routes.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
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
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: 'Silent',
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                  SizedBox(
                    width:
                        50, // Vous pouvez ajuster la taille selon vos besoins
                    height: 50,
                    child: Image.asset(ImageConstants.logo),
                  ),
                  CustomText(
                    text: 'Moon',
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ],
              ),
              SizedBox(height: 20),
              CustomText(
                text: 'Hi Afsar, Welcome',
                fontSize: 20,
                color: const Color.fromARGB(255, 235, 232, 219),
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 5),
              CustomText(
                text: 'to Silent Moon',
                fontSize: 16,
                color:  const Color.fromARGB(255, 235, 232, 219),
                fontWeight: FontWeight.w400,
              ),
              SizedBox(height: 10),
              CustomText(
                text: 'Explore the app, Find some peace of mind to prepare for meditation.',
                fontSize: 14,
                textAlign: TextAlign.center,
                color: Colors.white,
                fontWeight: FontWeight.w100,
              ),
              SizedBox(height: 350),
             
              CustomButton(text: 'GET STARTED', 
              textColor: Colors.black,
              onPressed: () {
                Get.offNamed(AppRoutes.chooseTopicScreen);
              },
              backgroundColor:Color.fromARGB(255, 235, 232, 219),
              ),
             
            ],
          ),
        ),
        ),
      ),
    );
  }
}

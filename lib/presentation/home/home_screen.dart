import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation_app_ui_community/common/widgets/custom_button.dart';
import 'package:meditation_app_ui_community/common/widgets/custom_text.dart';
import 'package:meditation_app_ui_community/core/constants/image_constants.dart';
import 'package:meditation_app_ui_community/routes/app_routes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  CustomText(
                    text: 'Silent',
                    fontSize: 16,
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
                    fontWeight: FontWeight.w400,
                  ),
                ],
              ),
              ),
              SizedBox(height: 20),
              CustomText(
                text: 'Good Morning, Romaric',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 4),
              CustomText(
                text: 'We Wish you have a good day',
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              SizedBox(height: 20),
              
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:meditation_app_ui_community/common/widgets/custom_button.dart';
import 'package:meditation_app_ui_community/common/widgets/custom_text.dart';
import 'package:meditation_app_ui_community/core/constants/image_constants.dart';
import 'package:meditation_app_ui_community/core/utils/colors.dart';

class SignInSignInScreen extends StatefulWidget {
  const SignInSignInScreen({super.key});

  @override
  State<SignInSignInScreen> createState() => _SignInSignInScreenState();
}

class _SignInSignInScreenState extends State<SignInSignInScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
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
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(
                    width:
                        50, // Vous pouvez ajuster la taille selon vos besoins
                    height: 50,
                    child: Image.asset(ImageConstants.logo),
                  ),
                  CustomText(
                    text: 'Moon',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              SizedBox(height: 40),
              Image.asset(ImageConstants.group),
              SizedBox(height: 40),
              CustomText(
                text: 'We are what we do',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 20),
              CustomText(
                text:
                    'Thousand of people are usign silent moon for smalls meditation',
                fontSize: 14,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              CustomButton(text: 'SIGN UP', 
              onPressed: () {},
              backgroundColor: AppColors.violet,
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: 'ALREADY HAVE AN ACCOUNT?',
                    fontSize: 14,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(width: 10),
                  TextButton(onPressed: () {}, child: CustomText(text: 'LOG IN', 
                  fontSize: 14, 
                  fontWeight: FontWeight.bold,
                  color: AppColors.violet,
                  ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

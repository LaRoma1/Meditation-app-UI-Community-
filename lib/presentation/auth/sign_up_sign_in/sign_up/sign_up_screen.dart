import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation_app_ui_community/common/widgets/custom_button.dart';
import 'package:meditation_app_ui_community/common/widgets/custom_text.dart';
import 'package:meditation_app_ui_community/common/widgets/custom_text_field.dart';
import 'package:meditation_app_ui_community/core/constants/image_constants.dart';
import 'package:meditation_app_ui_community/core/utils/colors.dart';
import 'package:meditation_app_ui_community/routes/app_routes.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
              // Container(
              //   width: 10,
              //   height: 10,
              //   decoration: BoxDecoration(
              //     color: Colors.white,
              //     borderRadius: BorderRadius.circular(50),
              //     shape: BoxShape.circle,
              //   ),
              //   child: Icon(Icons.arrow_back_ios, color: Colors.black45, size: 50,),
              // ),
            CustomText(text: 'Welcome Back!', fontSize: 24, fontWeight: FontWeight.bold),
             SizedBox(height: 20),
             SizedBox(
               width: double.infinity,
               height: 50,
               child: ElevatedButton.icon(
                 icon: Image.asset(ImageConstants.facebook, width: 24, height: 24),
                 label: Text(
                   'CONTINUE WITH FACEBOOK',
                   style: TextStyle(
                     color: Colors.white,
                     fontSize: 16,
                     fontFamily: 'OpenSans',
                     fontWeight: FontWeight.bold,
                   ),
                 ),
                 style: ElevatedButton.styleFrom(
                   backgroundColor: AppColors.violetDark,
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(50),
                   ),
                 ),
                 onPressed: () {},
               ),
             ),
             SizedBox(height: 20),
             SizedBox(
               width: double.infinity,
               height: 50,
               child: ElevatedButton.icon(
                 icon: Image.asset(ImageConstants.google, width: 24, height: 24),
                 label: Text(
                   'CONTINUE WITH GOOGLE',
                   style: TextStyle(
                     color: Colors.black,
                     fontSize: 16,
                     fontFamily: 'OpenSans',
                     fontWeight: FontWeight.bold,
                   ),
                 ),
                 style: ElevatedButton.styleFrom(
                   backgroundColor: Colors.white,
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(50),
                   ),
                 ),
                 onPressed: () {},
               ),
             ),
             SizedBox(height: 20),
             CustomText(text: 'Or continue with email', fontSize: 16, fontWeight: FontWeight.bold),
             SizedBox(height: 20),
            CustomTextField(
              hint: 'Email',
              prefixIcon: Icon(Icons.email),
            ),
            SizedBox(height: 20),
            CustomTextField(
              hint: 'Password',
              prefixIcon: Icon(Icons.lock),
            ),
            SizedBox(height: 20),
            CustomButton(
              backgroundColor: AppColors.violet,
              text: 'LOGIN',
              onPressed: () {},
            ),
            SizedBox(height: 10),
            CustomText(text: 'Forgot Password?', fontSize: 16, fontWeight: FontWeight.bold),
            SizedBox(height: 40),
Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: 'ALREADY HAVE AN ACCOUNT?',
                    fontSize: 14,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(width: 10),
                  TextButton(onPressed: () {
                     Get.offNamed(AppRoutes.signInScreen);
                  }, 
                  child: CustomText(text: 'LOG IN', 
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
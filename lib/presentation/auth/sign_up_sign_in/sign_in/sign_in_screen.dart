import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation_app_ui_community/common/widgets/custom_button.dart';
import 'package:meditation_app_ui_community/common/widgets/custom_text.dart';
import 'package:meditation_app_ui_community/common/widgets/custom_text_field.dart';
import 'package:meditation_app_ui_community/core/constants/image_constants.dart';
import 'package:meditation_app_ui_community/core/utils/colors.dart';
import 'package:meditation_app_ui_community/routes/app_routes.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageConstants.signIn),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () => Get.back(),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black45,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  CustomText(
                    text: 'Create Account',
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton.icon(
                      icon: Image.asset(
                        ImageConstants.facebook,
                        width: 24,
                        height: 24,
                      ),
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
                      icon: Image.asset(
                        ImageConstants.google,
                        width: 24,
                        height: 24,
                      ),
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
                  CustomText(
                    text: 'Or continue with email',
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: AppColors.grey,
                  ),
                  SizedBox(height: 20),
                  CustomTextField(hint: 'Name'),
                  SizedBox(height: 20),
                  CustomTextField(hint: 'Email'),
                  SizedBox(height: 20),
                  CustomTextField(hint: 'Password'),

                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'i have read the ',
                              style: TextStyle(
                                color: AppColors.grey,
                                fontSize: 14,
                              ),
                            ),
                            TextSpan(
                              text: 'Privace Policy',
                              style: TextStyle(
                                color: AppColors.violet,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Checkbox(
                        value: _isChecked,
                        activeColor: AppColors.violet,
                        onChanged: (value) {
                          setState(() {
                            _isChecked = value ?? false;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  CustomButton(
                    backgroundColor: AppColors.violet,
                    text: 'LOGIN',
                    onPressed: () {
                      Get.offNamed(AppRoutes.welcomeScreen);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:meditation_app_ui_community/common/widgets/custom_text.dart';
import 'package:meditation_app_ui_community/core/constants/image_constants.dart';

class WelcomeToSleep extends StatefulWidget {
  const WelcomeToSleep({super.key});

  @override
  State<WelcomeToSleep> createState() => _WelcomeToSleepState();
}

class _WelcomeToSleepState extends State<WelcomeToSleep> {
  @override
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            
            image: AssetImage(ImageConstants.welcomesleep),
            fit: BoxFit.cover,
          ),
        ),
         child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                CustomText(
                  text: 'Welcome to Sleep',
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: 14),
                CustomText(
                  textAlign: TextAlign.center,
                  text: 'Explore the new king of sleep. It uses sound and vesualization to create perfect conditions for refreshing sleep.',
                  fontSize: 14,
                  color: Colors.white,
                ),
                
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset(
                    ImageConstants.birds,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 20),
                CustomText(
                  text: 'Get started',
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
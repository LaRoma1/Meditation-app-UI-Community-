import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation_app_ui_community/common/widgets/custom_button.dart';
import 'package:meditation_app_ui_community/common/widgets/custom_text.dart';
import 'package:meditation_app_ui_community/core/constants/image_constants.dart';
import 'package:meditation_app_ui_community/core/utils/colors.dart';
import 'package:meditation_app_ui_community/routes/app_routes.dart';

class RemindersScreen extends StatefulWidget {
  const RemindersScreen({super.key});

  @override
  State<RemindersScreen> createState() => _RemindersScreenState();
}

class _RemindersScreenState extends State<RemindersScreen> {
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
        child:  SafeArea(
          child: Padding(
          padding:  EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50),
                
                    CustomText(
                      text: 'What time would you like to meditate?',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                   SizedBox(height: 6),
                    
               CustomText(
                      text: 'Any time you can choose but We recommend first thing in th morning.',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                SizedBox(height: 20),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: CupertinoDatePicker(
                    mode: CupertinoDatePickerMode.time,
                    onDateTimeChanged: (value) {
                      print(value);
                    },
                  ),
                ),
                SizedBox(height: 20),
                 CustomText(
                      text: 'Which day would you like to meditate?',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                   SizedBox(height: 6),
                    
               CustomText(
                      text: 'Everyday is best, but we recommend picking at least five.',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   
                  ],
                ),
                SizedBox(height: 20),
                CustomText(
                  text: 'Reminders will be sent to your phone.',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
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
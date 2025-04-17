import 'package:flutter/material.dart';
import 'package:meditation_app_ui_community/common/widgets/custom_text.dart';
import 'package:meditation_app_ui_community/core/constants/image_constants.dart';
import 'package:meditation_app_ui_community/core/utils/colors.dart';

class MusicScreen extends StatelessWidget {
  const MusicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageConstants.musiclight),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            CustomText(
              text: 'Musique',
              fontSize: 24,
              fontWeight: FontWeight.bold,  
            ),
          ],
        ),
      ),
    );
  }
} 
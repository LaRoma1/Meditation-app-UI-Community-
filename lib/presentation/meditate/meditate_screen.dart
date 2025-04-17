import 'package:flutter/material.dart';
import 'package:meditation_app_ui_community/common/widgets/custom_text.dart';
import 'package:meditation_app_ui_community/core/utils/colors.dart';

class MeditateScreen extends StatelessWidget {
  const MeditateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              CustomText(
                text: 'Méditate',
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 20),
              CustomText(
                text: 'Méditation',
                fontSize: 16,
                color: AppColors.grey,
              ),
              // Ajoutez ici le contenu de votre écran de méditation
            ],
          ),
        ),
      ),
    );
  }
}
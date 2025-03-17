import 'package:flutter/material.dart';
import 'package:meditation_app_ui_community/common/widgets/custom_text.dart';
import 'package:meditation_app_ui_community/core/utils/colors.dart';

class SleepScreen extends StatelessWidget {
  const SleepScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: 'Sommeil',
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 20),
              // Ajoutez ici le contenu de votre écran de sommeil
            ],
          ),
        ),
      ),
    );
  }
}
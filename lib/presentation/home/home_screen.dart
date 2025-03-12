import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation_app_ui_community/common/widgets/custom_button.dart';
import 'package:meditation_app_ui_community/common/widgets/custom_text.dart';
import 'package:meditation_app_ui_community/core/constants/image_constants.dart';
import 'package:meditation_app_ui_community/core/utils/colors.dart';
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
                fontSize: 12,
                color: AppColors.grey,
                fontWeight: FontWeight.w400,
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 150,
                    height: 200,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                        image: AssetImage(ImageConstants.basiscourse),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: 'Cours de base',
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                text: '3-10 min',
                                color: Colors.white,
                                fontSize: 12,
                              ),
                              InkWell(
                                onTap: () {
                                  // Action du bouton
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: CustomText(
                                    text: 'Start',
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 200,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                        image: AssetImage(ImageConstants.relaxation),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: 'Relaxation',
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                text: '3-19 min',
                                color: Colors.white,
                                fontSize: 12,
                              ),
                              InkWell(
                                onTap: () {
                                  // Action du bouton
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: CustomText(
                                    text: 'Start',
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
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

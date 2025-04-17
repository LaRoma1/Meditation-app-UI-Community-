import 'package:flutter/material.dart';
import 'package:meditation_app_ui_community/common/widgets/custom_text.dart';
import 'package:meditation_app_ui_community/core/constants/image_constants.dart';
import 'package:meditation_app_ui_community/core/utils/colors.dart';

class CourseDetailsScreen extends StatefulWidget {
  const CourseDetailsScreen({super.key});

  @override
  State<CourseDetailsScreen> createState() => _CourseDetailsScreenState();
}

class _CourseDetailsScreenState extends State<CourseDetailsScreen> {
  bool _maleSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)
                ),
                child: Image.asset(
                  ImageConstants.solar,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: "Happy Morning",
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  
                  SizedBox(height: 5),
                  
                  CustomText(
                    text: "COURSE",
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                  
                  SizedBox(height: 15),
                  
                  CustomText(
                    text: "Ease the mind into a restful night's sleep with these deep, ambient tones.",
                    fontSize: 16,
                    color: Colors.grey[600],
                  ),
                  
                  SizedBox(height: 20),
                  
                  Row(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.favorite, color: Colors.pink, size: 20),
                          SizedBox(width: 5),
                          CustomText(
                            text: "24.234 Favoris",
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      SizedBox(width: 30),
                      Row(
                        children: [
                          Icon(Icons.headphones, color: AppColors.primaryColor, size: 20),
                          SizedBox(width: 5),
                          CustomText(
                            text: "34.234 Écoutes",
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ],
                  ),
                  
                  SizedBox(height: 30),
                  
                  CustomText(
                    text: "Pick a Narrator",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  
                  SizedBox(height: 10),
                  
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            _maleSelected = true;
                          });
                        },
                        child: Column(
                          children: [
                            CustomText(
                              text: "MALE VOICE",
                              fontSize: 14,
                              color: _maleSelected ? AppColors.primaryColor : Colors.grey,
                              fontWeight: _maleSelected ? FontWeight.bold : FontWeight.normal,
                            ),
                            SizedBox(height: 5),
                            if (_maleSelected)
                              Container(
                                height: 3,
                                width: 80,
                                color: AppColors.primaryColor,
                              ),
                          ],
                        ),
                      ),
                      SizedBox(width: 30),
                      InkWell(
                        onTap: () {
                          setState(() {
                            _maleSelected = false;
                          });
                        },
                        child: Column(
                          children: [
                            CustomText(
                              text: "FEMALE VOICE",
                              fontSize: 14,
                              color: !_maleSelected ? AppColors.primaryColor : Colors.grey,
                              fontWeight: !_maleSelected ? FontWeight.bold : FontWeight.normal,
                            ),
                            SizedBox(height: 5),
                            if (!_maleSelected)
                              Container(
                                height: 3,
                                width: 100,
                                color: AppColors.primaryColor,
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  
                  SizedBox(height: 30),
                  
                  _buildMeditationItem(
                    title: "Focus Attention",
                    duration: "10 MIN",
                    isActive: true,
                  ),
                  
                  SizedBox(height: 15),
                  
                  _buildMeditationItem(
                    title: "Body Scan",
                    duration: "5 MIN", 
                  ),
                  
                  SizedBox(height: 15),
                  
                  _buildMeditationItem(
                    title: "Making Happiness",
                    duration: "3 MIN",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  Widget _buildMeditationItem({
    required String title,
    required String duration,
    bool isActive = false,
  }) {
    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: isActive ? AppColors.primaryColor.withOpacity(0.2) : Colors.grey.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.play_arrow,
            color: isActive ? AppColors.primaryColor : Colors.grey,
          ),
        ),
        SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: title,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 4),
            CustomText(
              text: duration,
              fontSize: 12,
              color: Colors.grey,
            ),
          ],
        ),
      ],
    );
  }
}
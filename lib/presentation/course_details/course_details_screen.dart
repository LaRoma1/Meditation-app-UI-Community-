import 'package:flutter/material.dart';
import 'package:meditation_app_ui_community/core/constants/image_constants.dart';

class CourseDetailsScreen extends StatefulWidget {
  const CourseDetailsScreen({super.key});

  @override
  State<CourseDetailsScreen> createState() => _CourseDetailsScreenState();
}

class _CourseDetailsScreenState extends State<CourseDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     body: Column(
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
)
      ]
     ),
    );
  }
}
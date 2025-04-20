import 'package:flutter/material.dart';
import 'package:meditation_app_ui_community/common/widgets/custom_text.dart';
import 'package:meditation_app_ui_community/core/constants/image_constants.dart';
import 'package:meditation_app_ui_community/core/utils/colors.dart';

class SleepScreen extends StatefulWidget {
  const SleepScreen({super.key});

  @override
  State<SleepScreen> createState() => _SleepScreenState();
}

class _SleepScreenState extends State<SleepScreen> {
  int _selectedIndex = 0;

  final List<Map<String, dynamic>> _filterItems = [
    {
      'icon': Icons.add,
      'label': 'All',
      'color': AppColors.primaryColor,
      'isSelected': true,
    },
    {
      'icon': Icons.favorite_outline,
      'label': 'My',
      'color': Colors.grey,
      'isSelected': false,
    },
    {
      'icon': Icons.sentiment_dissatisfied_outlined,
      'label': 'Anxious',
      'color': Colors.grey,
      'isSelected': false,
    },
    {
      'icon': Icons.nightlight_round,
      'label': 'Sleep',
      'color': Colors.grey,
      'isSelected': false,
    },
    {
      'icon': Icons.child_care_outlined,
      'label': 'Kids',
      'color': Colors.grey,
      'isSelected': false,
    },
  ];

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
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: 'Sleep Stories',
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: 20),
                CustomText(
                  textAlign: TextAlign.center,
                  text:
                      'Soothing bedtime stories to help you fall into a deep and natural sleep',
                  fontSize: 14,
                  color: AppColors.grey,
                ),
                SizedBox(height: 20),

                // Filtres horizontaux
                SizedBox(
                  height: 90,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _filterItems.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedIndex = index;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 15),
                          width: 65,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  color:
                                      index == _selectedIndex
                                          ? _filterItems[index]['color']
                                          : Colors.grey.shade400,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  _filterItems[index]['icon'],
                                  color: Colors.white,
                                  size: 24,
                                ),
                              ),
                              SizedBox(height: 8),
                              CustomText(
                                text: _filterItems[index]['label'],
                                fontSize: 12,
                                color:
                                    index == _selectedIndex
                                        ? Colors.black
                                        : Colors.grey,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),

                SizedBox(height: 20),

                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.25,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          ImageConstants.bannersleep,
                          fit: BoxFit.cover,
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.25,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CustomText(
                                  text: 'The ocean moon',
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                                SizedBox(height: 8),
                                CustomText(
                                  text:
                                      'Non-stop 8-hour mixes of our\nmost popular sleep audio',
                                  color: Colors.white70,
                                  fontSize: 14,
                                ),
                              ],
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.primaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 12,
                                ),
                              ),
                              child: Text(
                                'START',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

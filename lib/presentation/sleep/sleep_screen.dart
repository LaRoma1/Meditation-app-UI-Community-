import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation_app_ui_community/common/widgets/custom_text.dart';
import 'package:meditation_app_ui_community/core/constants/image_constants.dart';
import 'package:meditation_app_ui_community/core/utils/colors.dart';
import 'package:meditation_app_ui_community/routes/app_routes.dart';

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
     
      body: SingleChildScrollView(
        child: Container(
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
                SizedBox(height: 40),
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
                  height: MediaQuery.of(context).size.height * 0.35,
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
                          height: MediaQuery.of(context).size.height * 0.35,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CustomText(
                                text: 'The ocean moon',
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 8),
                              CustomText(
                                text:
                                    'Non-stop 8-hour mixes of our\nmost popular sleep audio',
                                color: Colors.white70,
                                fontSize: 14,
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 20),
                              ElevatedButton(
                                onPressed: () {
                                  Get.toNamed(AppRoutes.playOptionScreen);
                                },
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
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),

                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.8,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    List<Map<String, dynamic>> sleepItems = [
                      {
                        'image': ImageConstants.nightisland,
                        'title': 'Night Islands',
                        'duration': '45 MIN',
                      },
                      {
                        'image': ImageConstants.sweetsleep,
                        'title': 'Sweet Sleep',
                        'duration': '30 MIN',
                      },
                      {
                        'image': ImageConstants.moonclouds,
                        'title': 'Moon Clouds',
                        'duration': '20 MIN',
                      },
                      {
                        'image': ImageConstants.nightisland,
                        'title': 'Music Sleep',
                        'duration': '35 MIN',
                      },
                    ];

                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                            child: Image.asset(
                              sleepItems[index]['image'],
                              height: 100,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  text: sleepItems[index]['title'],
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                SizedBox(height: 4),
                                CustomText(
                                  text: sleepItems[index]['duration'],
                                  color: AppColors.grey,
                                  fontSize: 12,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                )
              ],
            ),
          ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:meditation_app_ui_community/common/widgets/custom_text.dart';
import 'package:meditation_app_ui_community/core/constants/image_constants.dart';
import 'package:meditation_app_ui_community/core/utils/colors.dart';
import 'package:get/get.dart';
import 'package:meditation_app_ui_community/routes/app_routes.dart';


class MeditateScreen extends StatefulWidget {
  const MeditateScreen({super.key});

  @override
  State<MeditateScreen> createState() => _MeditateScreenState();
}

class _MeditateScreenState extends State<MeditateScreen> {
  int _selectedIndex = 0;
  
  final List<Map<String, dynamic>> _filterItems = [
    {
      'icon': Icons.add,
      'label': 'All',
      'color': AppColors.primaryColor,
      'isSelected': true
    },
    {
      'icon': Icons.favorite_outline,
      'label': 'My',
      'color': Colors.grey,
      'isSelected': false
    },
    {
      'icon': Icons.sentiment_dissatisfied_outlined,
      'label': 'Anxious',
      'color': Colors.grey,
      'isSelected': false
    },
    {
      'icon': Icons.nightlight_round,
      'label': 'Sleep',
      'color': Colors.grey,
      'isSelected': false
    },
    {
      'icon': Icons.child_care_outlined,
      'label': 'Kids',
      'color': Colors.grey,
      'isSelected': false
    },
  ];

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
                textAlign: TextAlign.center,
                text: 'we can learn how to recognize when our minds are doing their normal everyday acrobatics.',
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
                                color: index == _selectedIndex 
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
                              color: index == _selectedIndex 
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
                width: double.infinity,
                height: 95,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                    image: AssetImage(ImageConstants.bannermeditate),
                    fit: BoxFit.cover,
                    opacity: 0.8,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                            text: 'Daily Calm',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          SizedBox(height: 4),
                          CustomText(
                            text: 'APR 30 • PAUSE PRACTICE',
                            fontSize: 11,
                            color: Colors.black.withOpacity(0.8),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoutes.musicScreen);
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.play_arrow,
                            color: Color(0xFF3F414E),
                            size: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
             
              SizedBox(height: 20),
              
              // Grille de cartes de méditation
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  children: [
                    // Carte 1 - 7 Days of Calm
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(ImageConstants.meditate1),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 15,
                            left: 15,
                            child: Container(
                              width: 150,
                              child: CustomText(
                                text: '7 Days of Calm',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                    // Carte 2 - Anxiet Release
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(ImageConstants.meditate2),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 15,
                            left: 15,
                            child: CustomText(
                              text: 'Anxiet Release',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                    // Carte 3 - Méditation plage
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(ImageConstants.meditate3),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    
                    // Carte 4 - Paysage nature
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(ImageConstants.meditate4),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation_app_ui_community/common/widgets/custom_button.dart';
import 'package:meditation_app_ui_community/common/widgets/custom_text.dart';
import 'package:meditation_app_ui_community/core/constants/image_constants.dart';
import 'package:meditation_app_ui_community/core/utils/colors.dart';
import 'package:meditation_app_ui_community/presentation/meditate/meditate_screen.dart';
import 'package:meditation_app_ui_community/presentation/musics/musics_screen.dart';
import 'package:meditation_app_ui_community/presentation/sleep/sleep_screen.dart';
import 'package:meditation_app_ui_community/presentation/profile/profile_screen.dart';
import 'package:meditation_app_ui_community/routes/app_routes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeContent(),
    const SleepScreen(),
    const MeditateScreen(),
    const MusicsScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.grey,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Accueil'),
          BottomNavigationBarItem(icon: Icon(Icons.bedtime), label: 'Sommeil'),
          BottomNavigationBarItem(
            icon: Icon(Icons.self_improvement),
            label: 'Méditer',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'Musique',
          ),

          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
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
                      width: 50,
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
                          Padding(
                            padding: const EdgeInsets.only(top: 55.0),
                            child: Column(
                              children: [
                                CustomText(
                                  text: 'Basic',
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                CustomText(
                                  text: 'COURSE',
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ],
                            ),
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
                                  Get.toNamed(AppRoutes.courseDetailScreen);
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 6,
                                  ),
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
                          Padding(
                            padding: const EdgeInsets.only(top: 55.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  text: 'Relaxation',
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                CustomText(
                                  text: 'MUSIC',
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                text: '3-19 min',
                                color: Colors.black,
                                fontSize: 12,
                              ),
                              InkWell(
                                onTap: () {
                                  // Action du bouton
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 6,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: CustomText(
                                    text: 'Start',
                                    color: Colors.white,
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
              SizedBox(height: 20),

              Container(
                width: double.infinity,
                height: 95,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                    image: AssetImage(ImageConstants.bannervideo),
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
                            text: 'Daily Thought',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          SizedBox(height: 4),
                          CustomText(
                            text: 'MEDITATION • 3-10 MIN',
                            fontSize: 11,
                            color: Colors.white.withOpacity(0.8),
                          ),
                        ],
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.play_arrow,
                          color: Color(0xFF3F414E),
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              
              SizedBox(height: 40),
              CustomText(
                text: 'Recomended for you',
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Container(
                          width: 150,
                          height: 100,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            image: DecorationImage(
                              image: AssetImage(ImageConstants.focus),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        CustomText(
                          text: 'Mask',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          textAlign: TextAlign.left,
                        ),
                        CustomText(
                          text: 'meditation 20 min',
                          fontSize: 12,
                          color: AppColors.grey,
                          fontWeight: FontWeight.w400,
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 150,
                          height: 100,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            image: DecorationImage(
                              image: AssetImage(ImageConstants.happiness),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        CustomText(
                          text: 'Mask',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          textAlign: TextAlign.left,
                        ),
                        CustomText(
                          text: 'meditation 20 min',
                          fontSize: 12,
                          color: AppColors.grey,
                          fontWeight: FontWeight.w400,
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Container(
                          width: 150,
                          height: 100,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            image: DecorationImage(
                              image: AssetImage(ImageConstants.focus),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        CustomText(
                          text: 'Mask',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          textAlign: TextAlign.left,
                        ),
                        CustomText(
                          text: 'meditation 20 min',
                          fontSize: 12,
                          color: AppColors.grey,
                          fontWeight: FontWeight.w400,
                          textAlign: TextAlign.left,
                        ),
                      ],
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

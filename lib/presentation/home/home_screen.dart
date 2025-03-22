import 'package:flutter/material.dart';
import 'package:meditation_app_ui_community/common/widgets/custom_button.dart';
import 'package:meditation_app_ui_community/common/widgets/custom_text.dart';
import 'package:meditation_app_ui_community/core/constants/image_constants.dart';
import 'package:meditation_app_ui_community/core/utils/colors.dart';
import 'package:meditation_app_ui_community/presentation/meditate/meditate_screen.dart';
import 'package:meditation_app_ui_community/presentation/music/music_screen.dart';
import 'package:meditation_app_ui_community/presentation/sleep/sleep_screen.dart';
import 'package:meditation_app_ui_community/presentation/profile/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeContent(),
    const MeditateScreen(),
    const MusicScreen(),
    const SleepScreen(),
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
          BottomNavigationBarItem(
            icon: Icon(Icons.self_improvement),
            label: 'Méditer',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'Musique',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.bedtime), label: 'Sommeil'),
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
              ],
            ),
            SizedBox(height: 20),

            // Row(
            //   children: [
            //     Image.asset(ImageConstants.mask),
            //   ],
            // ),
            SizedBox(height: 40),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
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
                  Column(
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
                  Column(
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

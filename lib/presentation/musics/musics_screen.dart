import 'package:flutter/material.dart';
import 'package:meditation_app_ui_community/common/widgets/custom_text.dart';
import 'package:meditation_app_ui_community/core/constants/image_constants.dart';
import 'package:get/get.dart';
class MusicsScreen extends StatefulWidget {
  const MusicsScreen({super.key});

  @override
  State<MusicsScreen> createState() => _MusicsScreenState();
}

class _MusicsScreenState extends State<MusicsScreen> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageConstants.musicsleep),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                // Barre du haut avec les boutons
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Bouton de fermeture (X)
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: 
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.close, color: Colors.black54),
                      ),
                      ),
                      
                      // Boutons d'action (cœur et téléchargement)
                      Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.favorite_border, color: Colors.white),
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.download_outlined, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // Espace central
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Texte principal "Focus Attention"
                      Text(
                        'Focus Attention',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 5),
                      // Sous-titre "7 DAYS OF CALM"
                      Text(
                        '7 DAYS OF CALM',
                        style: TextStyle(
                          fontSize: 16,
                          letterSpacing: 2,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),

                // Section des contrôles du lecteur
                Column(
                  children: [
                    // Boutons de contrôle de la méditation
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // Bouton - 15 secondes
                        Container(
                          child: Column(
                            children: [
                              Icon(
                                Icons.arrow_back_ios_new,
                                color: Colors.white,
                                size: 18,
                              ),
                              Text('15', style: TextStyle(color: Colors.white)),
                            ],
                          ),
                        ),
                        
                        // Bouton pause
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Color(0xFF3B3E4B),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.pause,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        
                        // Bouton + 15 secondes
                        Container(
                          child: Column(
                            children: [
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                                size: 18,
                              ),
                              Text('15', style: TextStyle(color: Colors.white)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    
                    // Barre de progression de la lecture
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 40),
                      child: Column(
                        children: [
                          SliderTheme(
                            data: SliderThemeData(
                              trackHeight: 2,
                              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 6),
                              overlayShape: RoundSliderOverlayShape(overlayRadius: 12),
                            ),
                            child: Slider(
                              value: 0.03,
                              onChanged: (value) {},
                              activeColor: Colors.white,
                              inactiveColor: Colors.white12,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '01:30',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  '45:00',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
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
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
} 
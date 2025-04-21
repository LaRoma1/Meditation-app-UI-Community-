import 'package:flutter/material.dart';
import 'package:meditation_app_ui_community/common/widgets/custom_button.dart';
import 'package:meditation_app_ui_community/common/widgets/custom_text.dart';
import 'package:meditation_app_ui_community/core/constants/image_constants.dart';
import 'package:meditation_app_ui_community/core/utils/colors.dart';

class PlayOption extends StatefulWidget {
  const PlayOption({super.key});

  @override
  State<PlayOption> createState() => _PlayOptionState();
}

class _PlayOptionState extends State<PlayOption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF03174C),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Image principale avec le nuage et la lune
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 300,
                  decoration: const BoxDecoration(
                    color: Color(0xFF3F3E7C),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                ),
                Image.asset(
                  ImageConstants.nightisland,
                  fit: BoxFit.contain,
                  height: 250,
                ),
              ],
            ),
            
            // Titre et durée
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TitleText(
                    text: "Night Island",
                    color: Colors.white,
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const BodyText(
                        text: "45 MIN",
                        color: Colors.white70,
                        fontSize: 12,
                      ),
                      const SizedBox(width: 10),
                      Container(
                        width: 5,
                        height: 5,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white70,
                        ),
                      ),
                      const SizedBox(width: 10),
                      const BodyText(
                        text: "SLEEP MUSIC",
                        color: Colors.white70,
                        fontSize: 12,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // Description
                  const BodyText(
                    text: "Ease the mind into a restful night's sleep with these deep, ambient tones.",
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                  const SizedBox(height: 30),
                  // Statistiques
                  Row(
                    children: [
                      const Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                        size: 24,
                      ),
                      const SizedBox(width: 10),
                      const BodyText(
                        text: "24.234 Favorits",
                        color: Colors.white,
                        fontSize: 14,
                      ),
                      const SizedBox(width: 30),
                      const Icon(
                        Icons.headphones,
                        color: Colors.white,
                        size: 24,
                      ),
                      const SizedBox(width: 10),
                      const BodyText(
                        text: "34.234 Lestening",
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            
            // Section Related
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TitleText(
                text: "Related",
                color: Colors.white,
                textAlign: TextAlign.left,
              ),
            ),
            
            // Cartes de musique liées
            SizedBox(
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                children: [
                  _buildRelatedCard(
                    "Moon Clouds",
                    "45 MIN • SLEEP MUSIC",
                    ImageConstants.moonclouds,
                  ),
                  const SizedBox(width: 16),
                  _buildRelatedCard(
                    "Sweet Sleep",
                    "45 MIN • SLEEP MUSIC", 
                    ImageConstants.sweetsleep,
                  ),
                ],
              ),
            ),
            
            // Bouton de lecture
            Padding(
              padding: const EdgeInsets.all(20),
              child: CustomButton(
                text: "PLAY",
                backgroundColor: const Color(0xFF8E97FD),
                onPressed: () {},
                height: 60,
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  Widget _buildRelatedCard(String title, String subtitle, String imagePath) {
    return Container(
      width: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFF1C2745),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image de la carte
          SizedBox(
            height: 110,
            width: double.infinity,
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
          // Texte de la carte
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BoldText(
                  text: title,
                  color: Colors.white,
                  fontSize: 15,
                ),
                const SizedBox(height: 4),
                BodyText(
                  text: subtitle,
                  color: Colors.white70,
                  fontSize: 11,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation_app_ui_community/common/widgets/custom_text.dart';
import 'package:meditation_app_ui_community/core/constants/image_constants.dart';
import 'package:meditation_app_ui_community/routes/app_routes.dart';

class Topic {
  final String title;
  final String image;

  Topic({required this.title, required this.image});
}

class ChooseTopicScreen extends StatefulWidget {
  const ChooseTopicScreen({super.key});

  @override
  State<ChooseTopicScreen> createState() => _ChooseTopicScreenState();
}

class _ChooseTopicScreenState extends State<ChooseTopicScreen> {
  final List<Topic> topics = [
    Topic(title: 'Reduce Stress', image: ImageConstants.stress),
    Topic(title: 'Better Sleep', image: ImageConstants.betterSleep),
    Topic(title: 'Improve Performance', image: ImageConstants.perform),
    Topic(title: 'Growd', image: ImageConstants.growd),
    Topic(title: 'Increase Happiness', image: ImageConstants.happy),
    Topic(title: 'Reduce Anxiety', image: ImageConstants.anxiety),
  ];

  @override
   Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageConstants.signIn),
            fit: BoxFit.cover,
          ),
        ),
        child:  SafeArea(
          child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              
                  CustomText(
                    text: 'What Brings you',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                 SizedBox(height: 6),
                  CustomText(
                    text: 'to Silent Moon?',
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                
              SizedBox(height: 10),
             CustomText(
                    text: 'choose a topic to focuse on:',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
              SizedBox(height: 20),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Colonne gauche
                        Expanded(
                          child: Column(
                            children: [
                              _buildTopicCard(topics[0], 1.4), // Reduce Stress (grand)
                              SizedBox(height: 15),
                              _buildTopicCard(topics[4], 1.0), // Increase Happiness (moyen)
                              SizedBox(height: 15),
                              _buildTopicCard(topics[2], 1.4), // Personal Growth (grand)
                            ],
                          ),
                        ),
                        SizedBox(width: 15),
                        // Colonne droite
                        Expanded(
                          child: Column(
                            children: [
                              _buildTopicCard(topics[1], 0.8), // Improve Performance (petit)
                              SizedBox(height: 15),
                              _buildTopicCard(topics[5], 1.4), // Reduce Anxiety (grand)
                              SizedBox(height: 15),
                              _buildTopicCard(topics[3], 1.0), // Better Sleep (moyen)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        ),
      ),
    );
  }

  Widget _buildTopicCard(Topic topic, double heightFactor) {
    return Container(
      height: MediaQuery.of(context).size.width * 0.5 * heightFactor,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(topic.image),
          fit: BoxFit.cover,
        ),
      ),
      child: GestureDetector(
        onTap: () {
           
            Get.toNamed(AppRoutes.remindersScreen);
        },
        child: Container(  
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                Colors.black.withOpacity(0.6),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: CustomText(
                  text: topic.title,
                  fontSize: 16,
                  fontFamily: 'OpenSans',
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
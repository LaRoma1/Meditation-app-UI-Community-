import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meditation_app_ui_community/common/widgets/custom_button.dart';
import 'package:meditation_app_ui_community/common/widgets/custom_text.dart';
import 'package:meditation_app_ui_community/core/constants/image_constants.dart';
import 'package:meditation_app_ui_community/core/utils/colors.dart';
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
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    childAspectRatio: 0.8,
                  ),
                  itemCount: topics.length,
                  itemBuilder: (context, index) {
                    bool isLeftItem = index % 4 < 2;
                    bool isFirstInPair = index % 4 == 0 || index % 4 == 2;
                    double heightFactor = isFirstInPair ? (isLeftItem ? 1.2 : 0.8) : (isLeftItem ? 0.8 : 1.2);
                    
                    return Container(
                      height: MediaQuery.of(context).size.width * 0.5 * heightFactor,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(topics[index].image),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.black.withOpacity(0.4),
                            ],
                          ),
                        ),
                        child: Center(
                          child: CustomText(
                            text: topics[index].title,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    );
                  },
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
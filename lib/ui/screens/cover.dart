import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class Cover extends StatelessWidget {
  const Cover({super.key});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 20, 21, 21),
            Color.fromARGB(255, 14, 11, 70),
            Color.fromARGB(255, 26, 19, 155),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 100.r),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: width < 600 ? 5 : 40),
                  child: CircleAvatar(
                    radius: width < 600 ? 80.r : 150.r,
                    backgroundImage: const AssetImage(
                      'assets/images/my_photo.jpg',
                    ),
                  ),
                ),
                width < 600 ? SizedBox(width: width * 0.03) : const Spacer(),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi👋, It\'s Me ',
                        style: TextStyle(
                          fontSize: width < 600 ? 24 : 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'RWAN HOSSAM',
                        style: TextStyle(
                          fontSize: width < 600 ? 25 : 45,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 205, 137, 55),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'I\'m a',
                            style: TextStyle(
                              fontSize: width < 600 ? 24 : 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Expanded(
                            child: AnimatedTextKit(
                              animatedTexts: [
                                TyperAnimatedText(
                                  ' Flutter Developer',
                                  textStyle: TextStyle(
                                    fontSize: width < 600 ? 25 : 45,
                                    fontWeight: FontWeight.bold,
                                    color: const Color.fromARGB(
                                      255,
                                      205,
                                      137,
                                      55,
                                    ),
                                  ),
                                ),
                              ],
                              repeatForever: true,
                              pause: const Duration(milliseconds: 2000),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 60, right: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Lottie.asset(
                    'assets/lotties/Flutter.json',
                    width: width < 600 ? 150 : 300,
                    height: width < 600 ? 150 : 300,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

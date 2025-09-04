import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import 'package:portofolio/ui/widgets/custom_appbar.dart';

class Cover extends StatelessWidget {
  const Cover({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,

      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 20, 21, 21),
            const Color.fromARGB(255, 14, 11, 70),
            const Color.fromARGB(255, 26, 19, 155),
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30.r),
                  child: CircleAvatar(
                    radius: 180.r,
                    backgroundImage: AssetImage('assets/images/portfolio.jpg'),
                  ),
                ),
                Spacer(),
                Expanded(
                  child: Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'Hi👋,It\'s Me ',
                          style: TextStyle(
                            fontSize: 50.r,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          'RWAN HOSSAM',
                          style: TextStyle(
                            fontSize: 50.r,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 205, 137, 55),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Text(
                              'I\'m a',
                              style: TextStyle(
                                fontSize: 50.r,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 244, 244, 243),
                              ),
                            ),
                            AnimatedTextKit(
                              animatedTexts: [
                                TyperAnimatedText(
                                  ' Flutter Developer',
                                  textStyle: TextStyle(
                                    fontSize: 50.r,
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
                              pause: Duration(milliseconds: 2000),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 60.r, right: 40.r),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Lottie.asset(
                    'assets/lotties/Flutter.json',
                    width: 400.r,
                    height: 400.r,
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

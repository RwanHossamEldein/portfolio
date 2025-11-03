import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width,

      color: Colors.black,
      padding: EdgeInsets.symmetric(vertical: 50.r, horizontal: 20.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About Me',
            style: TextStyle(
              color: Colors.blueAccent,
              fontFamily: 'MajorMonoDisplay',
              fontSize: width < 600 ? 20 : 40,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20.r),
          SizedBox(
            width: 600.r,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text:
                        'Passionate Computer Science student specializing in Flutter development.Experienced in building functional, well-structured mobile apps with clean UI.',
                    style: TextStyle(
                      fontSize: 20.r,
                      color: Colors.white,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  TextSpan(
                    text:
                        ' Knowledgeable in Clean Code and SOLID principles, with a strong passion for learning new technologies and continuously improving development skills. Also a tech writer, sharing insights and tutorials to help others in the developer community.',
                    style: TextStyle(
                      fontSize: 20.r,
                      color: Colors.blueAccent,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  TextSpan(
                    text:
                        'Seeking an opportunity to apply my expertise in a real-world setting.',
                    style: TextStyle(
                      fontSize: 20.r,
                      color: Colors.white,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30.r),
          Row(
            children: [
              Spacer(),
              Lottie.asset(
                'assets/lotties/Main Scene (1).json',
                width: width < 600 ? 200 : 400,
                height: width < 600 ? 200 : 400,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

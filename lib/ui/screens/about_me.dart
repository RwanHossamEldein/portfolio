import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,

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
              fontSize: 30.r,
              decoration: TextDecoration.none,
            ),
          ),
          SizedBox(height: 20.r),
          SizedBox(
            width: 600.r,
            child: Text(
              'Passionate Computer Science student specializing in Flutter development. Experienced in building functional, well-structured mobile apps with clean UI. Knowledgeable in Clean Code and SOLID principles, with a strong passion for learning new technologies and continuously improving development skills. Also a tech writer, sharing insights and tutorials to help others in the developer community. Seeking an opportunity to apply my expertise in a real-world setting.',
              style: TextStyle(
                fontSize: 20.r,
                color: Colors.white,
                decoration: TextDecoration.none,
              ),
              softWrap: true,
            ),
          ),
          SizedBox(height: 30.r),
          Row(
            children: [
              Spacer(),
              Lottie.asset(
                'assets/lotties/Main Scene (1).json',
                width: 400.r,
                height: 400.r,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

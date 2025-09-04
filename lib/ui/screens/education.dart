import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,

      color: Colors.black,
      padding: EdgeInsets.all(50.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'education',
            style: TextStyle(
              color: Colors.blueAccent,
              fontFamily: 'MajorMonoDisplay',
              fontSize: 30.r,
              decoration: TextDecoration.none,
            ),
          ),
          SizedBox(height: 20.r),
          Text(
            '''Student at the Faculty of Science,
Computer Science Department (2022–2026)''',
            style: TextStyle(
              fontSize: 20.r,
              color: Colors.white,
              decoration: TextDecoration.none,
            ),
          ),
          SizedBox(height: 20.r),
          Align(
            alignment: Alignment.centerRight,
            child: Image.asset(
              'assets/images/education.png',
              height: 300.r,
              width: 500.r,
            ),
          ),
        ],
      ),
    );
  }
}

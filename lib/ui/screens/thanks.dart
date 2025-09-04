import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class Thanks extends StatelessWidget {
  const Thanks({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'thank you',
            style: TextStyle(
              fontFamily: 'MajorMonoDisplay',
              color: const Color.fromARGB(255, 40, 158, 212),
              fontSize: 40.r,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 100.r),
          Padding(
            padding: EdgeInsets.all(20.r),
            child: SizedBox(
              width: 800.r,
              child: Text(
                softWrap: true,
                'thank you! i truly appreciate your time in viewing my portfolio. if you have any questions or collaboration ideas, let’s talk!',
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontSize: 20.r,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.all(30.r),
                child: Lottie.asset(
                  'assets/lotties/Phoenix.json',
                  width: 200,
                  height: 200,
                  repeat: true,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portofolio/data/soft_skils.dart';
import 'package:portofolio/data/technical_skills.dart';
import 'package:portofolio/ui/widgets/custom_stack_list.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    TechnicalSkills technicalSkills = TechnicalSkills();
    SoftSkils softSkils = SoftSkils();

    return Container(
      width: MediaQuery.of(context).size.width,

      color: Colors.black,
      padding: EdgeInsets.all(20.r),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Skills',
              style: TextStyle(
                color: Colors.white,
                fontSize: 35.r,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.r),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'technical skills',
                  style: TextStyle(
                    fontFamily: 'MajorMonoDisplay',
                    color: const Color.fromARGB(255, 40, 158, 212),
                    fontSize: 40.r,
                  ),
                ),
              ],
            ),
            SizedBox(height: 40.r),
            SizedBox(
              height: 250.r,
              child: CustomStackList(list: technicalSkills.techSkills),
            ),
            SizedBox(height: 50.r),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'soft skills',
                  style: TextStyle(
                    fontFamily: 'MajorMonoDisplay',
                    color: const Color.fromARGB(255, 40, 158, 212),
                    fontSize: 40.r,
                  ),
                ),
              ],
            ),
            SizedBox(height: 40.r),
            SizedBox(
              height: 250.r,
              child: CustomStackList(list: softSkils.softSkills),
            ),
          ],
        ),
      ),
    );
  }
}

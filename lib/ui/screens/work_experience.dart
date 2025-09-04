import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portofolio/data/work_experience_data.dart';

class WorkExperience extends StatelessWidget {
  WorkExperience({super.key});
  WorkExperienceData job1 = WorkExperienceData();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.black,
      child: ListView.builder(
        itemCount: job1.workExperience.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Text(
                'work experience',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontFamily: 'MajorMonoDisplay',
                  fontSize: 30.r,
                  decoration: TextDecoration.none,
                ),
              ),
              SizedBox(height: 20.r),
              Padding(
                padding: EdgeInsets.all(30.r),
                child: Row(
                  children: [
                    Container(
                        width: 100.r,
                        height: 100.r,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          image: DecorationImage(
                              image: AssetImage(
                                job1.workExperience[index]['logo'],
                              ),
                              fit: BoxFit.cover),
                        )),
                    SizedBox(width: 20.r),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          job1.workExperience[index]['jobTitle'],
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          job1.workExperience[index]['company'],
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          job1.workExperience[index]['duration'],
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

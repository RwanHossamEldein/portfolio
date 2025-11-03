import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portofolio/data/education_data.dart';

class Education extends StatelessWidget {
  Education({super.key});
  EducationData educationData = EducationData();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,

      color: Colors.black,
      padding: EdgeInsets.all(width < 600 ? 10 : 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'education',
            style: TextStyle(
              color: Colors.blueAccent,
              fontFamily: 'MajorMonoDisplay',
              fontSize: width < 600 ? 30 : 40,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.bold,
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: educationData.educationDataList.length,
            itemBuilder: (BuildContext context, int index) {
              return Row(
                children: [
                  Image(
                    image: AssetImage(
                      educationData.educationDataList[index]['image'],
                    ),
                    width: width < 600 ? 60 : 100,
                    height: width < 600 ? 60 : 100,
                  ),
                  SizedBox(width: 10),
                  SizedBox(
                    width: width < 600 ? 300 : 600,
                    child: Text(
                      educationData.educationDataList[index]['name'],
                      style: TextStyle(color: Colors.white),
                      softWrap: true,
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/data/projects_data.dart';
import 'package:portfolio/ui/widgets/custom_stack_list.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

ProjectsData dataProject = ProjectsData();

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,

      color: Colors.black,
      padding: EdgeInsets.all(20.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'projects',
            style: TextStyle(
              fontFamily: 'MajorMonoDisplay',
              color: Colors.blueAccent,
              fontSize: width < 600 ? 30 : 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 30.r),
          CustomStackList(list: dataProject.projects),
        ],
      ),
    );
  }
}

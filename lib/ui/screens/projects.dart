import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portofolio/data/projects_data.dart';
import 'package:portofolio/ui/widgets/custom_stack_list.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

ProjectsData dataProject = ProjectsData();

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,

      color: Colors.black,
      padding: EdgeInsets.all(20.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'projects',
            style: TextStyle(
              fontFamily: 'MajorMonoDisplay',
              color: const Color.fromARGB(255, 40, 158, 212),
              fontSize: 40.r,
            ),
          ),
          SizedBox(height: 30.r),
          CustomStackList(list: dataProject.projects),
        ],
      ),
    );
  }
}

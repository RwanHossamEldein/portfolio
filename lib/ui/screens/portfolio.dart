import 'package:flutter/material.dart';
import 'package:portofolio/ui/screens/about_me.dart';
import 'package:portofolio/ui/screens/contact_me.dart';
import 'package:portofolio/ui/screens/cover.dart';
import 'package:portofolio/ui/screens/education.dart';
import 'package:portofolio/ui/screens/projects.dart';

import 'package:portofolio/ui/screens/skills.dart';
import 'package:portofolio/ui/screens/testimonials.dart';
import 'package:portofolio/ui/screens/thanks.dart';
import 'package:portofolio/ui/screens/work_experience.dart';
import 'package:portofolio/ui/widgets/custom_appbar.dart';

class Portfolio extends StatelessWidget {
  Portfolio({super.key});

  final ScrollController _scrollController = ScrollController();

  final Map<String, double> sectionOffsets = {
    "cover": 0,
    "about": 850,
    "education": 1400,
    "skills": 2100,
    "contact": 4800,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        scrollController: _scrollController,
        sectionOffsets: sectionOffsets,
      ),
      body: ScrollbarTheme(
        data: ScrollbarThemeData(
          thumbColor: MaterialStateProperty.all(
            Color.fromARGB(255, 55, 142, 205),
          ),
        ),
        child: Scrollbar(
          controller: _scrollController,
          child: SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                const Cover(),
                const AboutMe(),
                const Education(),
                const Skills(),
                WorkExperience(),
                Projects(),
                Testimonials(),
                ContactMe(),
                const Thanks(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

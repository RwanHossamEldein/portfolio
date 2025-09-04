import 'package:flutter/material.dart';
import 'package:portofolio/ui/screens/about_me.dart';
import 'package:portofolio/ui/screens/contact_me.dart';
import 'package:portofolio/ui/screens/cover.dart';
import 'package:portofolio/ui/screens/education.dart';

import 'package:portofolio/ui/screens/portfolio.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portofolio/ui/screens/skills.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Portfolio(),
        );
      },
    );
  }
}

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/ui/screens/about_me.dart';
import 'package:portfolio/ui/screens/contact_me.dart';
import 'package:portfolio/ui/screens/cover.dart';
import 'package:portfolio/ui/screens/education.dart';
import 'package:portfolio/ui/screens/projects.dart';
import 'package:portfolio/ui/screens/skills.dart';
import 'package:portfolio/ui/screens/testimonials.dart';
import 'package:portfolio/ui/screens/thanks.dart';
import 'package:portfolio/ui/widgets/custom_appbar.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  final ScrollController _scrollController = ScrollController();

  final coverKey = GlobalKey();
  final aboutKey = GlobalKey();
  final educationKey = GlobalKey();
  final skillsKey = GlobalKey();
  final contactKey = GlobalKey();

  double _getOffset(GlobalKey key) {
    final renderBox = key.currentContext?.findRenderObject() as RenderBox?;
    if (renderBox != null) {
      return renderBox
              .localToGlobal(Offset.zero, ancestor: context.findRenderObject())
              .dy +
          _scrollController.offset;
    }
    return 0;
  }

  void scrollTo(GlobalKey key) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final offset = _getOffset(key);
      _scrollController.animateTo(
        offset,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        onSectionSelected: (section) {
          switch (section) {
            case "cover":
              scrollTo(coverKey);
              break;
            case "about":
              scrollTo(aboutKey);
              break;
            case "education":
              scrollTo(educationKey);
              break;
            case "skills":
              scrollTo(skillsKey);
              break;
            case "contact":
              scrollTo(contactKey);
              break;
          }
        },
      ),
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(
          dragDevices: {PointerDeviceKind.touch, PointerDeviceKind.trackpad},
        ),
        child: ScrollbarTheme(
          data: ScrollbarThemeData(
            // ignore: deprecated_member_use
            thumbColor: MaterialStateProperty.all(
              Color.fromARGB(255, 55, 142, 205),
            ),
          ),

          child: SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                Cover(key: coverKey),
                AboutMe(key: aboutKey),
                Education(key: educationKey),
                Skills(key: skillsKey),
                Projects(),
                Testimonials(),
                ContactMe(key: contactKey),
                const Thanks(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

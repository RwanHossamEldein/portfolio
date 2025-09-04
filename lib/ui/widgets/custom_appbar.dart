import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final ScrollController scrollController;
  final Map<String, double> sectionOffsets;

  const CustomAppBar({
    super.key,
    required this.scrollController,
    required this.sectionOffsets,
  });

  void scrollTo(String section) {
    final offset = sectionOffsets[section] ?? 0;
    scrollController.animateTo(
      offset,
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
        TextButton(
          onPressed: () => scrollTo("cover"),
          child: Text(
            "Cover",
            style: TextStyle(color: Colors.white, fontSize: 20.r),
          ),
        ),
        TextButton(
          onPressed: () => scrollTo("about"),
          child: Text(
            "About",
            style: TextStyle(color: Colors.white, fontSize: 20.r),
          ),
        ),
        TextButton(
          onPressed: () => scrollTo("education"),
          child: Text(
            "Education",
            style: TextStyle(color: Colors.white, fontSize: 20.r),
          ),
        ),
        TextButton(
          onPressed: () => scrollTo("skills"),
          child: Text(
            "Skills",
            style: TextStyle(color: Colors.white, fontSize: 20.r),
          ),
        ),
        TextButton(
          onPressed: () => scrollTo("contact"),
          child: Text(
            "Contact Me",
            style: TextStyle(color: Colors.white, fontSize: 20.r),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight.r);
}

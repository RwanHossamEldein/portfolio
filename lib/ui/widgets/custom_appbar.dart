import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Function(String) onSectionSelected;

  const CustomAppBar({super.key, required this.onSectionSelected});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
        TextButton(
          onPressed: () => onSectionSelected("cover"),
          child: Text(
            "Cover",
            style: TextStyle(
              color: Colors.white,
              fontSize: width < 600 ? 15 : 20,
            ),
          ),
        ),
        TextButton(
          onPressed: () => onSectionSelected("about"),
          child: Text(
            "About",
            style: TextStyle(
              color: Colors.white,
              fontSize: width < 600 ? 15 : 20,
            ),
          ),
        ),
        TextButton(
          onPressed: () => onSectionSelected("education"),
          child: Text(
            "Education",
            style: TextStyle(
              color: Colors.white,
              fontSize: width < 600 ? 15 : 20,
            ),
          ),
        ),
        TextButton(
          onPressed: () => onSectionSelected("skills"),
          child: Text(
            "Skills",
            style: TextStyle(
              color: Colors.white,
              fontSize: width < 600 ? 15 : 20,
            ),
          ),
        ),
        TextButton(
          onPressed: () => onSectionSelected("contact"),
          child: Text(
            "Contact Me",
            style: TextStyle(
              color: Colors.white,
              fontSize: width < 600 ? 15 : 20,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

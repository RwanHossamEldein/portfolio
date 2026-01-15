import 'package:flutter/material.dart';

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
        if (width >= 600) ...[
          TextButton(
            onPressed: () => onSectionSelected("cover"),
            child: Text(
              "Cover",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          TextButton(
            onPressed: () => onSectionSelected("about"),
            child: Text(
              "About",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          TextButton(
            onPressed: () => onSectionSelected("education"),
            child: Text(
              "Education",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          TextButton(
            onPressed: () => onSectionSelected("skills"),
            child: Text(
              "Skills",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          TextButton(
            onPressed: () => onSectionSelected("contact"),
            child: Text(
              "Contact Me",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ] else ...[
          PopupMenuButton<String>(
            onSelected: onSectionSelected,
            itemBuilder:
                (BuildContext context) => [
                  PopupMenuItem<String>(value: "cover", child: Text("Cover")),
                  PopupMenuItem<String>(value: "about", child: Text("About")),
                  PopupMenuItem<String>(
                    value: "education",
                    child: Text("Education"),
                  ),
                  PopupMenuItem<String>(value: "skills", child: Text("Skills")),
                  PopupMenuItem<String>(
                    value: "contact",
                    child: Text("Contact Me"),
                  ),
                ],
            icon: Icon(Icons.menu, color: Colors.white),
          ),
        ],
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

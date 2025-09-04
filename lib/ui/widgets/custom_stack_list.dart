import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portofolio/ui/screens/skills.dart';
import 'package:portofolio/ui/widgets/custom_container.dart';

class CustomStackList extends StatefulWidget {
  const CustomStackList({super.key, required this.list});
  final List<dynamic> list;

  @override
  State<CustomStackList> createState() => _CustomStackState();
}

class _CustomStackState extends State<CustomStackList> {
  final PageController _controller = PageController(viewportFraction: 0.8);
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 600.r,
          child: PageView.builder(
            itemCount: widget.list.length,
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              return Center(
                child: CustomContainer(
                  image: widget.list[index]['img'],
                  title: widget.list[index]['title'],
                  description: widget.list[index]['description'] ?? '',
                  technologiesUsed:
                      widget.list[index]['technologiesUsed'] ?? '',
                  Link: widget.list[index]['Link'] ?? '',
                  showButton: widget.list[index]['showButton'] ?? false,
                ),
              );
            },
          ),
        ),
        Positioned(
          left: 0,
          top: 0,
          bottom: 0,
          child: Visibility(
            visible: currentPage > 0,
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              color: Colors.white,
              onPressed: () {
                if (currentPage > 0) {
                  _controller.previousPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                }
              },
            ),
          ),
        ),
        Positioned(
          right: 0,
          top: 0,
          bottom: 0,
          child: Visibility(
            visible: currentPage < widget.list.length - 1,
            child: IconButton(
              icon: Icon(Icons.arrow_forward_ios),
              color: Colors.white,
              onPressed: () {
                if (currentPage < widget.list.length - 1) {
                  _controller.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                }
              },
            ),
          ),
        ),
      ],
    );
  }
}

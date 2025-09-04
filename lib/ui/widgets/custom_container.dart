import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomContainer extends StatelessWidget {
  String image;
  String title;
  String description;
  String technologiesUsed;
  String Link;
  final bool showButton;

  CustomContainer({
    super.key,
    required this.image,
    required this.title,
    this.description = '',
    this.technologiesUsed = '',
    this.Link = '',
    this.showButton = true,
  });

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: 150.r,
            height: 150.r,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(12.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 8.r,
                  offset: Offset(0, 4.r),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.r),
          Text(
            textAlign: TextAlign.center,
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.r,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.r),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 7.r),
            child: Text(
              textAlign: TextAlign.center,
              description,
              style: TextStyle(
                color: const Color.fromARGB(255, 120, 159, 239),
                fontSize: 16.r,
                fontWeight: FontWeight.bold,
              ),
              softWrap: true,
            ),
          ),
          SizedBox(height: 10.r),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 7.r),
            child: Text(
              textAlign: TextAlign.center,
              technologiesUsed,
              style: TextStyle(
                color: const Color.fromARGB(255, 218, 220, 224),
                fontSize: 16.r,
                fontWeight: FontWeight.bold,
              ),
              softWrap: true,
            ),
          ),
          if (showButton)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 40.r,
                  height: 40.r,
                  child: LottieBuilder.asset('assets/lotties/GitHub icon.json'),
                ),
                TextButton(
                  onPressed: () => _launchUrl(Link),
                  child: const Text('View Project'),
                ),
              ],
            ),
        ],
      ),
    );
  }
}

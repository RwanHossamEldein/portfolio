import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomContactIcon extends StatelessWidget {
  final String assetPath;
  final String url;
  final bool isLottie;

  const CustomContactIcon({
    super.key,
    required this.assetPath,
    required this.url,
    this.isLottie = false,
  });

  Future<void> _launchUrl() async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception("Could not launch $url");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0.r),
      child: InkWell(
        onTap: _launchUrl,
        borderRadius: BorderRadius.circular(12.r),
        child: Container(
          width: 70,
          height: 70,
          alignment: Alignment.center,
          child:
              isLottie
                  ? Lottie.asset(assetPath, width: 40.r, height: 40.r)
                  : Image.asset(assetPath, width: 40.r, height: 40.r),
        ),
      ),
    );
  }
}

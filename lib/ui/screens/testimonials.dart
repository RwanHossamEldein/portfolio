import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portofolio/data/testimonials_data.dart';

class Testimonials extends StatelessWidget {
  Testimonials({super.key});
  TestimonialsData testimonial1 = TestimonialsData();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(color: Colors.black),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'testimonials',
              style: TextStyle(
                fontFamily: 'MajorMonoDisplay',
                color: Colors.blueAccent,
                fontSize: width < 600 ? 30 : 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.r),
            Expanded(
              child: ListView.builder(
                itemCount: testimonial1.testimonial.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image(
                          image: AssetImage(
                            testimonial1.testimonial[index]['image'],
                          ),
                          height: 220.r,
                          width: width < 600 ? 350 : 650,
                          fit: BoxFit.contain,
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          width: width < 600 ? 300 : 600,
                          child: Text(
                            testimonial1.testimonial[index]['person'],
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: width < 600 ? 10 : 20,
                            ),
                            softWrap: true,
                          ),
                        ),
                        Divider(thickness: 0.5, color: Colors.blueGrey),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

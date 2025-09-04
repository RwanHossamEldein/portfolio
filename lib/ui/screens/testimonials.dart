import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portofolio/data/testimonials_data.dart';

class Testimonials extends StatelessWidget {
  Testimonials({super.key});
  TestimonialsData testimonial1 = TestimonialsData();
  @override
  Widget build(BuildContext context) {
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
                color: const Color.fromARGB(255, 40, 158, 212),
                fontSize: 40.r,
              ),
            ),
            SizedBox(height: 20.r),
            Expanded(
              child: ListView.builder(
                itemCount: testimonial1.testimonial.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Column(
                      children: [
                        Text(
                          testimonial1.testimonial[index]['text'],
                          style: TextStyle(color: Colors.white, fontSize: 20.r),
                        ),
                        SizedBox(height: 10.r),
                        SizedBox(
                          height: 220.r,
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  testimonial1.testimonial[index]['person'],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.r,
                                  ),
                                ),
                              ),

                              Image(
                                image: AssetImage(
                                  testimonial1.testimonial[index]['image'],
                                ),
                                height: 220.r,
                                width: 650.r,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
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

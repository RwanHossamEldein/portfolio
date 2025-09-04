import 'package:emailjs/emailjs.dart' as emailjs;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portofolio/data/contact_data.dart';
import 'package:portofolio/ui/widgets/custom_contact_icon.dart';

class ContactMe extends StatefulWidget {
  const ContactMe({super.key});

  @override
  State<ContactMe> createState() => _ContactMeState();
}

class _ContactMeState extends State<ContactMe> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  void _sendEmail() async {
    try {
      await emailjs.send(
        'service_3tw74ae',
        'template_09b49ja',
        {
          'from_name': nameController.text,
          'from_email': emailController.text,
          'message': messageController.text,
        },
        const emailjs.Options(
          publicKey: 'BjZffHAfMXK1QFwgq',
          privateKey: 'Gg3VkRn57_qqdTykHyRVy',
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Message sent successfully!')),
      );
    } catch (error) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Failed to send message.')));
      print(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.black,
      padding: EdgeInsets.symmetric(vertical: 50.r, horizontal: 20.r),
      child: Padding(
        padding: EdgeInsets.only(left: 300.r, right: 300.r),
        child: Column(
          children: [
            Text(
              'contact me',
              style: TextStyle(
                color: Colors.blueAccent,
                fontFamily: 'MajorMonoDisplay',
                fontSize: 30.r,
                decoration: TextDecoration.none,
              ),
            ),
            SizedBox(height: 20.r),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: "Your Name",
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.r)),
                ),
              ),
            ),
            SizedBox(height: 12.r),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: "Your Email",
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.r)),
                ),
              ),
            ),
            SizedBox(height: 12.r),
            TextField(
              controller: messageController,
              maxLines: 4,
              decoration: InputDecoration(
                hintText: "Message",
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.r)),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _sendEmail,

              child: const Text(
                "send message",
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontFamily: 'MajorMonoDisplay',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 40.r),
            SizedBox(
              width: MediaQuery.of(context).size.width.r,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    ContactData.socialLinks.map((link) {
                      return CustomContactIcon(
                        assetPath: link["icon"]!,
                        url: link["url"]!,
                        isLottie: link["isLottie"] as bool,
                      );
                    }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

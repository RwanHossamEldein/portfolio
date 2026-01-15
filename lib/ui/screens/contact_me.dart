import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import 'package:portfolio/data/contact_data.dart';
import 'package:portfolio/ui/widgets/custom_contact_icon.dart';
import 'package:portfolio/ui/widgets/custom_text_feild.dart';

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
    if (nameController.text.isEmpty ||
        emailController.text.isEmpty ||
        messageController.text.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Please fill all fields.')));
      return;
    }

    const serviceId = 'service_741qfqj';
    const templateId = 'template_4i7890l';
    const publicKey = 'BjZffHAfMXK1QFwgq';

    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');

    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},

        body: json.encode({
          'service_id': serviceId,
          'template_id': templateId,
          'user_id': publicKey,
          'template_params': {
            'name': nameController.text,
            'email': emailController.text,
            'title': "New Contact Request",
            'message': messageController.text,
          },
        }),
      );

      if (response.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Message sent successfully!')),
        );
        nameController.clear();
        emailController.clear();
        messageController.clear();
      } else {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Failed: ${response.body}')));
      }
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Error: $e')));
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      color: Colors.black,
      padding: EdgeInsets.symmetric(vertical: 40.r, horizontal: 20.r),
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 600),
          child: Column(
            children: [
              Text(
                'contact me',
                style: TextStyle(
                  fontFamily: 'MajorMonoDisplay',
                  color: Colors.blueAccent,
                  fontSize: width < 600 ? 30 : 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.r),
              buildTextField(nameController, "Your Name"),
              SizedBox(height: 12.r),
              buildTextField(emailController, "Your Email"),
              SizedBox(height: 12.r),
              buildTextField(messageController, "Message", maxLines: 4),
              SizedBox(height: 20.r),
              ElevatedButton(
                onPressed: _sendEmail,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(
                    vertical: 12.r,
                    horizontal: 25.r,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                ),
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
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 20.r,
                children:
                    ContactData.socialLinks.map((link) {
                      return CustomContactIcon(
                        assetPath: link["icon"]!,
                        url: link["url"]!,
                        isLottie: link["isLottie"] as bool,
                      );
                    }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

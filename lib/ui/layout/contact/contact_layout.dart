import 'package:flutter/material.dart';
import 'package:estebancoder/config/config.dart';
import 'package:estebancoder/ui/layout/contact/photo_contact.dart';
import 'package:estebancoder/ui/layout/contact/widgets/contact_app_bar.dart';
import 'package:estebancoder/ui/layout/contact/widgets/contact_form.dart';
import 'package:estebancoder/ui/layout/contact/widgets/contact_title.dart';

class ContactLayout extends StatelessWidget {
  const ContactLayout({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.navy,
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  PhotoContact(pageColor: AppColors.mint),
                  const ContactTitle(
                      text:
                          'Thanks for taking the time to reach out.\nHow can I help you?'),
                  const SizedBox(height: 30),
                  const ContactForm(),
                  const SizedBox(height: 30),
                ],
              ),
            ),
            const ContactAppBar()
          ],
        ),
      ),
    );
  }
}

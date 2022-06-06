import 'package:flutter/material.dart';
import 'package:portfolio/config/config.dart';
import 'package:portfolio/ui/layout/contact/photo_contact.dart';
import 'package:portfolio/ui/layout/contact/widgets/contact_app_bar.dart';
import 'package:portfolio/ui/layout/contact/widgets/contact_form.dart';
import 'package:portfolio/ui/layout/contact/widgets/contact_title.dart';
import 'package:portfolio/ui/widgets/custom_rounded_button.dart';

class ContactLayout extends StatelessWidget {
  const ContactLayout({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final pageColor = colors[0];
    return Scaffold(
      backgroundColor: pageColor,
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  PhotoContact(pageColor: pageColor),
                  const ContactTitle(),
                  const SizedBox(height: 30),
                  ContactForm(),
                  const SizedBox(height: 30),
                  CustomRounderButton(
                    text: 'Submit',
                    color: pageColor,
                    onTap: () {
                      //TODO: Send the message
                    },
                  ),
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

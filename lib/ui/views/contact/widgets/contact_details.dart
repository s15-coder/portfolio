import 'package:estebancoder/ui/views/contact/widgets/contact_item.dart';
import 'package:estebancoder/ui/widgets/hover_mouse_effect.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactDetails extends StatelessWidget {
  const ContactDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HoverMouseEffect(
          onTap: () {
            launchUrl(Uri.parse('tel:+1 6723553212'));
          },
          child: const ContactItem(
            icon: Icons.phone_outlined,
            text: '+1 6723553212',
          ),
        ),
        HoverMouseEffect(
          onTap: () {
            launchUrl(Uri.parse('mailto:serestebanoo@gmail.com'));
          },
          child: const ContactItem(
            icon: Icons.email_outlined,
            text: 'serestebanoo@gmail.com',
          ),
        ),
        const ContactItem(
          icon: Icons.location_on_outlined,
          text: 'British Columbia, Canada.',
        ),
      ],
    );
  }
}

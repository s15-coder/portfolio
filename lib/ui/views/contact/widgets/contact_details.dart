import 'package:estebancoder/config/styles/styles.dart';
import 'package:estebancoder/ui/widgets/hover_mouse_effect.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactDetails extends StatelessWidget {
  const ContactDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 50,
      runSpacing: 20,
      children: [
        ContactButton(
          onTap: () {
            launchUrl(Uri.parse('tel:+1 6723553212'));
          },
          icon: FontAwesomeIcons.phone,
        ),
        ContactButton(
          onTap: () {
            launchUrl(Uri.parse('mailto:serestebanoo@gmail.com'));
          },
          icon: Icons.email,
        ),
        ContactButton(
          onTap: () {
            launchUrl(Uri.parse('https://github.com/s15-coder'));
          },
          icon: FontAwesomeIcons.github,
        ),
        ContactButton(
          onTap: () {
            launchUrl(
                Uri.parse('https://www.linkedin.com/in/barraganesteban/'));
          },
          icon: FontAwesomeIcons.linkedinIn,
        ),
        ContactButton(
          onTap: () {
            launchUrl(Uri.parse('https://wa.me/16723553212'));
          },
          icon: FontAwesomeIcons.whatsapp,
        ),
      ],
    );
  }
}

class ContactButton extends StatelessWidget {
  const ContactButton({required this.icon, required this.onTap, Key? key})
      : super(key: key);
  final IconData icon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    final bool isMobileWidth = DeviceWidthChecker.isMobileWidth(context);
    return HoverMouseEffect(
      onTap: onTap,
      child: Icon(
        icon,
        color: Colors.white,
        size: isMobileWidth ? 30 : 44,
      ),
    );
  }
}

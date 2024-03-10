import 'package:flutter/material.dart';
import 'package:estebancoder/config/config.dart';
import 'package:estebancoder/ui/widgets/custom_rounded_button.dart';

class ContactButton extends StatelessWidget {
  const ContactButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return CustomRounderButton(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          text: 'Contact',
          color: AppColors.navy,
          onTap: () {
            Navigator.pushNamedAndRemoveUntil(
                context, "/contact", (route) => false);
          });
    });
  }
}

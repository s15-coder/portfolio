import 'package:estebancoder/config/config.dart';
import 'package:estebancoder/config/styles/styles.dart';
import 'package:estebancoder/config/styles/ui_fonts.dart';
import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  const ContactItem({Key? key, required this.text, required this.icon})
      : super(key: key);
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: UILayout.small,
        horizontal: UILayout.xlarge,
      ),
      child: Row(
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(UILayout.medium),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  AppColors.navy,
                  AppColors.purple,
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: UILayout.medium,
                vertical: UILayout.medium,
              ),
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            width: UILayout.medium,
          ),
          Text(
            text,
            style: UIFonts.subtitle.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

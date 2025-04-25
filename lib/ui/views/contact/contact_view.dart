import 'package:estebancoder/config/config.dart';
import 'package:estebancoder/config/styles/styles.dart';
import 'package:estebancoder/ui/views/contact/widgets/contact_details.dart';
import 'package:flutter/material.dart';

class ContactView extends StatelessWidget {
  const ContactView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isMobileWidth = DeviceWidthChecker.isMobileWidth(context);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 48),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.purple,
            AppColors.navy,
          ],
        ),
      ),
      child: Column(
        children: [
          Text(
            'CONTACT',
            style: TextStyle(
              color: Colors.white,
              fontSize: isMobileWidth ? 28 : 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: UILayout.xlarge),
          isMobileWidth
              ? const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ContactDetails(),
                  ],
                )
              : Padding(
                  padding: UIPadding.padding_24,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const ContactDetails(),
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}

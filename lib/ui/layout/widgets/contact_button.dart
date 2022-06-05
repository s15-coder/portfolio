import 'package:flutter/material.dart';
import 'package:portfolio/config/config.dart';
import 'package:portfolio/providers/page_provider.dart';
import 'package:portfolio/ui/widgets/custom_rounded_button.dart';
import 'package:provider/provider.dart';

class ContactButton extends StatelessWidget {
  const ContactButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context);

    return Builder(builder: (context) {
      return CustomRounderButton(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          text: 'Contact',
          color: colors[pageProvider.currentIndex],
          onTap: () {});
    });
  }
}

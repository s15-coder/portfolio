import 'package:estebancoder/config/styles/styles.dart';
import 'package:estebancoder/config/styles/ui_fonts.dart';
import 'package:estebancoder/core/images/images.dart';
import 'package:estebancoder/ui/widgets/custom_circular_container.dart';
import 'package:flutter/material.dart';

class ExperienceItem extends StatelessWidget {
  const ExperienceItem({
    Key? key,
    required this.appImageAsset,
    required this.toolName,
  }) : super(key: key);
  final String toolName;
  final AppImageAsset appImageAsset;
  @override
  Widget build(BuildContext context) {
    final bool isMobileWidth = DeviceWidthChecker.isMobileWidth(context);

    return Column(
      children: [
        CircularContainer(
          size: isMobileWidth ? UILayout.xxlarge : UILayout.xxxlarge,
          child: AppImage(
            image: appImageAsset,
          ),
        ),
        const SizedBox(height: UILayout.medium),
        Text(
          toolName,
          style: isMobileWidth ? UIFonts.subtitle : UIFonts.subtitleBold,
        ),
      ],
    );
  }
}

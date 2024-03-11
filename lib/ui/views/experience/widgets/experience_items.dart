import 'package:estebancoder/config/styles/styles.dart';
import 'package:estebancoder/core/images/images.dart';
import 'package:estebancoder/ui/views/experience/widgets/experience_item.dart';
import 'package:flutter/material.dart';

class ExperienceItems extends StatelessWidget {
  const ExperienceItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobileWidth = DeviceWidthChecker.isMobileWidth(context);
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: isMobileWidth ? UILayout.xlarge : UILayout.xxlarge,
      runSpacing: isMobileWidth ? UILayout.xlarge : UILayout.xxlarge,
      children: [
        ExperienceItem(
          appImageAsset: AppImages.dartIcon,
          toolName: 'Dart',
        ),
        ExperienceItem(
          appImageAsset: AppImages.androidIcon,
          toolName: 'Android',
        ),
        ExperienceItem(
          appImageAsset: AppImages.appleIcon,
          toolName: 'iOS',
        ),
        ExperienceItem(
          appImageAsset: AppImages.flutterIcon,
          toolName: 'Flutter',
        ),
        ExperienceItem(
          appImageAsset: AppImages.kotlinIcon,
          toolName: 'Kotlin',
        ),
        ExperienceItem(
          appImageAsset: AppImages.firebaseIcon,
          toolName: 'Firebase',
        ),
        ExperienceItem(
          appImageAsset: AppImages.javascriptIcon,
          toolName: 'Javascript',
        ),
        ExperienceItem(
          appImageAsset: AppImages.nodejsIcon,
          toolName: 'Node JS',
        ),
      ],
    );
  }
}

import 'package:estebancoder/config/styles/styles.dart';
import 'package:estebancoder/ui/views/experience/widgets/experience_items.dart';
import 'package:flutter/material.dart';

class ExperienceView extends StatelessWidget {
  const ExperienceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isMobileWidth = DeviceWidthChecker.isMobileWidth(context);
    return Column(
      children: [
        Text(
          'EXPERIENCE',
          maxLines: 2,
          style: TextStyle(
            color: Colors.white,
            fontSize: isMobileWidth ? 34 : 50,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: isMobileWidth ? UILayout.xlarge : UILayout.xxlarge),
        const ExperienceItems(),
      ],
    );
  }
}

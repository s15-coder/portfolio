import 'package:flutter/material.dart';
import 'package:estebancoder/config/styles/styles.dart';
import 'package:estebancoder/core/images/images.dart';
import 'package:estebancoder/ui/widgets/custom_circular_container.dart';

class IntroductionCard extends StatelessWidget {
  const IntroductionCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isMobileWidth = DeviceWidthChecker.isMobileWidth(context);

    return SizedBox(
      width: isMobileWidth ? 300 : 400,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularContainer(
            size: 150,
            child: AppImage(
              image: AppImages.me,
              boxFit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: UILayout.xlarge),
          Text(
            'Esteban Barragán',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

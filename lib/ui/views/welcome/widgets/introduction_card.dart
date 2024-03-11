import 'package:flutter/material.dart';
import 'package:estebancoder/config/styles/styles.dart';
import 'package:estebancoder/core/images/images.dart';
import 'package:estebancoder/ui/widgets/custom_circular_container.dart';

class IntroductionCard extends StatelessWidget {
  const IntroductionCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobileDevice = DeviceWidthChecker.isMobileWidth(context);
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(
        top: !isMobileDevice ? 200 : UILayout.large,
      ),
      constraints: const BoxConstraints(maxWidth: 300),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            alignment: Alignment.topCenter,
            child: Transform.translate(
              offset: const Offset(0, -50),
              child: CircularContainer(
                size: UILayout.xxxlarge,
                child: AppImage(
                  image: AppImages.me,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              left: UILayout.large,
              right: UILayout.large,
              top: UILayout.xxlarge,
              bottom: UILayout.xlarge,
            ),
            child: Text(
              'Here, you\'ll discover everything about my extensive expertise and journey as a seasoned Mobile Developer. Explore the depths of my experience and skills right at your fingertips!',
              textAlign: TextAlign.center,
              style: TextStyle(
                  height: 1.5,
                  fontSize: 20,
                  fontWeight: FontWeight.w200,
                  color: Colors.black.withOpacity(0.6)),
            ),
          )
        ],
      ),
    );
  }
}

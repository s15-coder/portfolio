import 'package:estebancoder/config/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:estebancoder/ui/views/welcome/widgets/introduction_card.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isMobileWidth = DeviceWidthChecker.isMobileWidth(context);
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: isMobileWidth
                ? CrossAxisAlignment.center
                : CrossAxisAlignment.center,
            children: [
              if (isMobileWidth) const SizedBox(height: UILayout.xxxlarge),
              Text(
                'MOBILE',
                maxLines: 2,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: isMobileWidth ? 40 : 70,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'DEVELOPER',
                maxLines: 2,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: isMobileWidth ? 40 : 70,
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (isMobileWidth)
                const Padding(
                    padding: EdgeInsets.only(top: 60),
                    child: IntroductionCard())
            ],
          ),
          if (!isMobileWidth) const IntroductionCard()
        ],
      ),
    );
  }
}

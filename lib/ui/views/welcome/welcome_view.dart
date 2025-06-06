import 'package:estebancoder/config/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:estebancoder/ui/views/welcome/widgets/introduction_card.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isMobileWidth = DeviceWidthChecker.isMobileWidth(context);
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: UILayout.xxxlarge,
        horizontal: isMobileWidth ? UILayout.xlarge : UILayout.xxxlarge,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (isMobileWidth) const SizedBox(height: UILayout.xxxlarge),
              Text(
                'Software',
                maxLines: 2,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: isMobileWidth ? 40 : 64,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Developer',
                maxLines: 2,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: isMobileWidth ? 40 : 64,
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

import 'package:flutter/material.dart';
import 'package:estebancoder/ui/views/welcome/widgets/introduction_card.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: size.width > 750
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.center,
                children: [
                  Text(
                    'MOBILE',
                    maxLines: 2,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: size.width > 750 ? 70 : 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'DEVELOPER',
                    maxLines: 2,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: size.width > 750 ? 70 : 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  if (size.width <= 750)
                    Container(
                        margin: const EdgeInsets.only(top: 60),
                        child: const IntroductionCard())
                ],
              ),
            ],
          ),
          if (size.width > 750) const IntroductionCard()
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:portfolio/config/config.dart';
import 'package:portfolio/providers/page_provider.dart';
import 'package:portfolio/ui/views/welcome/widgets/introduction_card.dart';
import 'package:portfolio/ui/widgets/custom_rounded_button.dart';
import 'package:provider/provider.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageColor = colors[0];
    final pageProvider = Provider.of<PageProvider>(context, listen: false);
    final size = MediaQuery.of(context).size;
    return Container(
      color: pageColor,
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
                        margin: EdgeInsets.only(top: 60),
                        child: IntroductionCard())
                ],
              ),
              if (size.width > 750)
                Container(
                  alignment: Alignment.center,
                  child: CustomRounderButton(
                    color: pageColor,
                    text: 'Show me more',
                    onTap: () {
                      pageProvider.goTo(1);
                    },
                  ),
                )
            ],
          ),
          if (size.width > 750) IntroductionCard()
        ],
      ),
    );
  }
}

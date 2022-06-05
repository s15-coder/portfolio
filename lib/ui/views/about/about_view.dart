import 'package:flutter/material.dart';
import 'package:portfolio/config/config.dart';
import 'package:portfolio/providers/page_provider.dart';
import 'package:portfolio/ui/views/about/widgets/about_card.dart';
import 'package:portfolio/ui/views/welcome/widgets/introduction_card.dart';
import 'package:portfolio/ui/widgets/custom_rounded_button.dart';
import 'package:provider/provider.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context, listen: false);
    final size = MediaQuery.of(context).size;

    final pageColor = colors[1];
    return Container(
      color: colors[1],
      width: size.width,
      height: size.height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          if (size.width > 750) AboutCard(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'ABOUT',
                maxLines: 2,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: size.width > 750 ? 70 : 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (size.width > 750)
                Container(
                  alignment: Alignment.center,
                  child: CustomRounderButton(
                    color: pageColor,
                    text: 'Now, the projects',
                    onTap: () {
                      pageProvider.goTo(2);
                    },
                  ),
                ),
              if (size.width <= 750) AboutCard()
            ],
          ),
        ],
      ),
    );
  }
}

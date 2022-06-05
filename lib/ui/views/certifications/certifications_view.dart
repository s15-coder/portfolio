import 'package:flutter/material.dart';
import 'package:portfolio/config/config.dart';
import 'package:portfolio/providers/carousel_provider.dart';
import 'package:portfolio/providers/page_provider.dart';
import 'package:portfolio/ui/views/certifications/widgets/certification_caroucel.dart';
import 'package:portfolio/ui/widgets/circular_outlined_button.dart';
import 'package:portfolio/ui/widgets/custom_rounded_button.dart';
import 'package:provider/provider.dart';

class CertificationsView extends StatelessWidget {
  CertificationsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context, listen: false);
    final carouselProvider = Provider.of<CarouselProvider>(context);
    final size = MediaQuery.of(context).size;
    final pageColor = colors[3];
    return Container(
      color: colors[3],
      child: Column(
        mainAxisAlignment: size.width > 750
            ? MainAxisAlignment.spaceAround
            : MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'CERTIFICATIONS',
            maxLines: 2,
            style: TextStyle(
              color: Colors.white,
              fontSize: size.width > 750 ? 55 : 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          CertificatonCaroucel(),
          CircularOutlinedButton(
            color: pageColor,
            iconData: carouselProvider.slidingCertifications
                ? Icons.pause
                : Icons.play_arrow,
            onTap: () {
              if (carouselProvider.slidingCertifications) {
                carouselProvider.stopSlidingCertification();
              } else {
                carouselProvider.startSlidingCertification();
              }
            },
          ),
          if (size.width > 750)
            Row(
              children: [
                Spacer(),
                Container(
                  margin: EdgeInsets.only(right: 30),
                  child: CustomRounderButton(
                      text: 'Let\'s contact him',
                      color: pageColor,
                      onTap: () {
                        pageProvider.goTo(3);
                      }),
                )
              ],
            )
        ],
      ),
    );
  }
}

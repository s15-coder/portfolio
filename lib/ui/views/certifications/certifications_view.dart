import 'package:flutter/material.dart';
import 'package:portfolio/config/config.dart';
import 'package:portfolio/ui/views/certifications/widgets/certification_caroucel.dart';
import 'package:portfolio/ui/widgets/custom_rounded_button.dart';

class CertificationsView extends StatelessWidget {
  const CertificationsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          const CertificatonCaroucel(),
          if (size.width > 750)
            Row(
              children: [
                const Spacer(),
                Container(
                  margin: const EdgeInsets.only(right: 30),
                  child: CustomRounderButton(
                    text: 'Let\'s contact him',
                    color: pageColor,
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, "/contact", (route) => false);
                    },
                  ),
                )
              ],
            )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:portfolio/config/config.dart';
import 'package:portfolio/ui/widgets/custom_circular_container.dart';

class AboutCard extends StatelessWidget {
  const AboutCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.width > 750 ? 420 : null,
      constraints:
          BoxConstraints(maxWidth: size.width > 750 ? 500 : size.width * 00.9),
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
              child: CustomCircularContainer(
                child: Container(
                  color: colors[1],
                  child: const Icon(
                    Icons.info_outline_rounded,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: size.width > 750 ? 20 : 10,
              right: size.width > 750 ? 20 : 10,
              top: 60,
            ),
            child: Text(
              'Hi I\'m Esteban Barragan and I am from Colombia. I have about ${DateTime(0, 0, DateTime.now().difference(DateTime(2019)).inDays).year} years of experience working as Mobile Developer. I have learned different technologies used nowadays in the industry as:\n'
              '- Version control (Git)\n'
              '- Flutter (Mobile and web)\n'
              '- Kotlin\n'
              '- Firebase\n'
              '- Javascript\n'
              '- Node Js\n',
              style: TextStyle(
                  height: size.width > 650 ? 1.5 : 1,
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

import 'package:flutter/material.dart';
import 'package:portfolio/config/config.dart';
import 'package:portfolio/providers/carousel_provider.dart';
import 'package:portfolio/providers/page_provider.dart';
import 'package:portfolio/ui/views/projects/widgets/projects_carousel.dart';
import 'package:portfolio/ui/widgets/circular_outlined_button.dart';
import 'package:portfolio/ui/widgets/custom_rounded_button.dart';
import 'package:provider/provider.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context, listen: false);
    final carouselProvider = Provider.of<CarouselProvider>(context);
    final pageColor = colors[2];
    final size = MediaQuery.of(context).size;
    return Container(
      color: pageColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'APPS',
            maxLines: 2,
            style: TextStyle(
              color: Colors.white,
              fontSize: 55,
              fontWeight: FontWeight.bold,
            ),
          ),
          ProjectsCarousel(),
          CircularOutlinedButton(
            color: pageColor,
            iconData:
                carouselProvider.slidingApps ? Icons.pause : Icons.play_arrow,
            onTap: () {
              if (carouselProvider.slidingApps) {
                carouselProvider.stopSlidingApp();
              } else {
                carouselProvider.startSlidingApp();
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
                      text: 'Does Esteban like to learn? ',
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

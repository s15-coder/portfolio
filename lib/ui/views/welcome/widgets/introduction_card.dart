import 'package:flutter/material.dart';
import 'package:portfolio/core/images/images.dart';
import 'package:portfolio/ui/widgets/custom_circular_container.dart';

class IntroductionCard extends StatelessWidget {
  const IntroductionCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: size.width > 750 ? 0 : 30),
      height: 380,
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
              child: CustomCircularContainer(
                child: AppImage(
                  image: AppImages.me,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 80),
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

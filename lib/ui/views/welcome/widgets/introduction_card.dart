import 'package:flutter/material.dart';
import 'package:portfolio/ui/widgets/custom_circular_container.dart';

class IntroductionCard extends StatelessWidget {
  const IntroductionCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: size.width > 750 ? 0 : 30),
      height: 300,
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
              child: CustomCircularContainer(child: Image.asset('me.jpg')),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 80),
            child: Text(
              'Hello, this is the web page where you\'ll be able to know about me and my experience as Mobile Developer.',
              textAlign: TextAlign.justify,
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

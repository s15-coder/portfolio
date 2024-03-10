import 'package:flutter/material.dart';
import 'package:estebancoder/ui/views/experience/widgets/certification_caroucel.dart';

class ExperienceView extends StatelessWidget {
  const ExperienceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
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
      ],
    );
  }
}

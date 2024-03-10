import 'package:flutter/material.dart';
import 'package:estebancoder/core/images/images.dart';
import 'package:estebancoder/ui/widgets/custom_circular_container.dart';

class PhotoContact extends StatelessWidget {
  const PhotoContact({Key? key, required this.pageColor}) : super(key: key);
  final Color pageColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
      width: double.infinity,
      alignment: Alignment.topCenter,
      child: CustomCircularContainer(
        child: Container(
          padding: const EdgeInsets.all(5),
          child: ClipOval(
            child: AppImage(image: AppImages.me),
          ),
          color: pageColor,
        ),
      ),
    );
  }
}

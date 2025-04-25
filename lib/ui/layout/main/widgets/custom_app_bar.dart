import 'package:flutter/material.dart';
import 'package:estebancoder/core/images/images.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      margin: const EdgeInsets.only(top: 10),
      height: 50,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              top: 5,
            ),
            child: AppImage(image: AppImages.appIcon),
          ),
          const Spacer(),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:estebancoder/config/styles/styles.dart';
import 'package:estebancoder/config/styles/ui_fonts.dart';
import 'package:estebancoder/ui/views/projects/widgets/app_item_image.dart';

class AppItem extends StatelessWidget {
  const AppItem({
    Key? key,
    required this.appImageItem,
    required this.description,
    required this.subtitle,
    required this.textDirection,
  }) : super(key: key);
  final String subtitle;
  final String description;
  final AppImageItem appImageItem;
  final TextDirection textDirection;
  @override
  Widget build(BuildContext context) {
    if (DeviceWidthChecker.isMobileWidth(context)) {
      return Column(
        children: [
          TextColumn(
            width: MediaQuery.of(context).size.width * .8,
            subtitle: subtitle,
            description: description,
          ),
          const SizedBox(
            height: UILayout.large,
          ),
          appImageItem,
        ],
      );
    }
    return Row(
      textDirection: textDirection,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextColumn(
            width: MediaQuery.of(context).size.width * .3,
            subtitle: subtitle,
            description: description),
        const SizedBox(
          width: UILayout.xlarge,
        ),
        appImageItem,
      ],
    );
  }
}

class TextColumn extends StatelessWidget {
  const TextColumn({
    Key? key,
    required this.subtitle,
    required this.description,
    required this.width,
  }) : super(key: key);

  final String subtitle;
  final String description;
  final double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            subtitle,
            style: UIFonts.subtitleBold,
          ),
          Text(
            description,
            style: UIFonts.paragraphs,
          ),
        ],
      ),
    );
  }
}

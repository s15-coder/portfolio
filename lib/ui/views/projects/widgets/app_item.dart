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
    required this.title,
    required this.textDirection,
  }) : super(key: key);
  final String title;
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
              title: title,
              subtitle: subtitle,
              description: description),
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
            title: title,
            subtitle: subtitle,
            description: description),
        SizedBox(
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
    required this.title,
    required this.subtitle,
    required this.description,
    required this.width,
  }) : super(key: key);

  final String title;
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
            title,
            style: UIFonts.subtitle,
          ),
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

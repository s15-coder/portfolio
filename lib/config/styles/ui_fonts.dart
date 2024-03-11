import 'package:flutter/material.dart';
import 'package:estebancoder/config/config.dart';

class UIFonts {
  static TextStyle title = TextStyle(
    color: AppColors.grey,
    fontSize: 24,
  );
  static TextStyle titleBold = title.copyWith(fontWeight: FontWeight.w900);
  static TextStyle subtitle = TextStyle(
    color: AppColors.grey,
    fontSize: 20,
  );
  static TextStyle subtitleBold = TextStyle(
    color: AppColors.grey,
    fontSize: 20,
    fontWeight: FontWeight.w900,
  );
  static TextStyle paragraphs = TextStyle(
    color: AppColors.grey.withOpacity(.6),
    fontSize: 16,
    fontFamily: 'arial',
  );
}

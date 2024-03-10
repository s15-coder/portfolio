import 'package:flutter/cupertino.dart';
import 'package:estebancoder/core/images/images.dart';

class AppItemImageModel {
  final AppImageAsset appImageAsset;
  final List<AppItemImageOptionModel> options;
  final String? textBelow;

  AppItemImageModel({
    required this.appImageAsset,
    required this.options,
    this.textBelow,
  });
}

class AppItemImageOptionModel {
  final String text;
  final void Function()? onTap;
  final MouseCursor cursor;

  AppItemImageOptionModel({
    required this.text,
    this.onTap,
    this.cursor = SystemMouseCursors.click,
  });
}

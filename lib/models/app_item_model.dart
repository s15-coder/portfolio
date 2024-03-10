import 'package:flutter/cupertino.dart';
import 'package:portfolio/core/images/images.dart';

class AppItemModel {
  final AppImageAsset appImageAsset;
  final List<AppItemOptionModel> options;
  final String? textBelow;

  AppItemModel({
    required this.appImageAsset,
    required this.options,
    this.textBelow,
  });
}

class AppItemOptionModel {
  final String text;
  final void Function()? onTap;
  final MouseCursor cursor;

  AppItemOptionModel({
    required this.text,
    this.onTap,
    this.cursor = SystemMouseCursors.click,
  });
}

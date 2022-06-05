import 'package:flutter/cupertino.dart';

class AppItemModel {
  final String assetPath;
  final List<AppItemOptionModel> options;
  final String? textBelow;

  AppItemModel({
    required this.assetPath,
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

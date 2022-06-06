import 'dart:ui';

import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  const CustomField(
      {Key? key,
      required this.label,
      this.maxLines,
      this.minLines,
      this.textCapitalization = TextCapitalization.sentences,
      this.validator})
      : super(key: key);
  final String label;
  final TextCapitalization textCapitalization;
  final int? maxLines;
  final int? minLines;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: TextFormField(
        validator: validator,
        keyboardType: TextInputType.multiline,
        textInputAction: TextInputAction.newline,
        minLines: minLines,
        maxLines: maxLines,
        textCapitalization: textCapitalization,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          errorBorder: const OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.white,
              width: 2,
            ),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.white,
              width: 2,
            ),
          ),
          errorStyle: TextStyle(color: Colors.white),
          alignLabelWithHint: true,
          label: Text(
            label,
            style: const TextStyle(color: Colors.white),
          ),
          border: const OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.white,
              width: 1,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.white,
              width: 1,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 1,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomCircularContainer extends StatelessWidget {
  const CustomCircularContainer({Key? key, required this.child})
      : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        padding: const EdgeInsets.all(7),
        color: Colors.white,
        height: 100,
        width: 100,
        child: ClipOval(child: child),
      ),
    );
  }
}

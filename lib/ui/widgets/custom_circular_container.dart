import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    Key? key,
    required this.child,
    required this.size,
  }) : super(key: key);
  final Widget child;
  final double size;
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        padding: const EdgeInsets.all(7),
        color: Colors.white,
        height: size,
        width: size,
        child: ClipOval(child: child),
      ),
    );
  }
}

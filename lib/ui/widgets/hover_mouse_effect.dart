import 'package:flutter/material.dart';

class HoverMouseEffect extends StatefulWidget {
  const HoverMouseEffect({
    Key? key,
    required this.onTap,
    required this.child,
  }) : super(key: key);
  final VoidCallback onTap;
  final Widget child;
  @override
  State<HoverMouseEffect> createState() => _HoverMouseEffectState();
}

class _HoverMouseEffectState extends State<HoverMouseEffect> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: isHover ? SystemMouseCursors.click : MouseCursor.defer,
      onHover: (_) => setState(() => isHover = true),
      onExit: (_) => setState(() => isHover = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: widget.child,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomRounderButton extends StatefulWidget {
  const CustomRounderButton({
    Key? key,
    required this.text,
    required this.color,
    required this.onTap,
    this.padding,
  }) : super(key: key);
  final String text;
  final Color color;
  final void Function()? onTap;
  final EdgeInsets? padding;
  @override
  State<CustomRounderButton> createState() => _CustomRounderButtonState();
}

class _CustomRounderButtonState extends State<CustomRounderButton> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onHover: (_) => setState(() => {isHover = true}),
        onExit: (_) => setState(() => {isHover = false}),
        child: AnimatedContainer(
          padding: widget.padding ??
              EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
          decoration: BoxDecoration(
              color: isHover ? Colors.white : widget.color,
              border: Border.all(
                color: Colors.white,
                style: BorderStyle.solid,
                width: 3,
              ),
              borderRadius: BorderRadius.circular(30)),
          duration: const Duration(milliseconds: 300),
          child: Text(
            widget.text,
            style: TextStyle(
              color: isHover ? widget.color : Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

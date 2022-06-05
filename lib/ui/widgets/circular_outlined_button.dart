import 'package:flutter/material.dart';

class CircularOutlinedButton extends StatefulWidget {
  const CircularOutlinedButton({
    Key? key,
    required this.color,
    required this.onTap,
    required this.iconData,
  }) : super(key: key);
  final Color color;
  final void Function()? onTap;
  final IconData iconData;
  @override
  State<CircularOutlinedButton> createState() => _CircularOutlinedButtonState();
}

class _CircularOutlinedButtonState extends State<CircularOutlinedButton> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (_) => setState(() => {isHover = true}),
      onExit: (_) => setState(() => {isHover = false}),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              width: 3,
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: isHover ? Colors.white : widget.color,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Icon(
              widget.iconData,
              color: isHover ? widget.color : Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

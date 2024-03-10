import 'package:flutter/material.dart';
import 'package:estebancoder/models/app_item_model.dart';

class AppItemImageOption extends StatefulWidget {
  const AppItemImageOption({
    Key? key,
    required this.appItemImageOptionModel,
  }) : super(key: key);
  final AppItemImageOptionModel appItemImageOptionModel;
  @override
  State<AppItemImageOption> createState() => _AppItemImageOptionState();
}

class _AppItemImageOptionState extends State<AppItemImageOption> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MouseRegion(
      cursor: widget.appItemImageOptionModel.cursor,
      onHover: (_) => setState(() => isHover = true),
      onExit: (_) => setState(() => isHover = false),
      child: GestureDetector(
        onTap: widget.appItemImageOptionModel.onTap,
        child: Container(
          color: isHover ? Colors.white : Colors.transparent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(
                  left: 10,
                  top: 10,
                  bottom: 10,
                ),
                child: Text(
                  widget.appItemImageOptionModel.text,
                  style: TextStyle(
                      color: size.width > 750
                          ? isHover
                              ? Colors.black
                              : Colors.white
                          : Colors.black),
                ),
              ),
              const Divider(
                height: 1,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}

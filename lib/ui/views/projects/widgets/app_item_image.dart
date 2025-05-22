import 'package:estebancoder/config/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:estebancoder/core/images/images.dart';
import 'package:estebancoder/models/app_item_model.dart';
import 'package:estebancoder/ui/views/projects/widgets/app_item_image_option.dart';

class AppImageItem extends StatefulWidget {
  const AppImageItem({
    Key? key,
    required this.appItemImageModel,
  }) : super(key: key);
  final AppItemImageModel appItemImageModel;
  @override
  State<AppImageItem> createState() => _AppItemState();
}

class _AppItemState extends State<AppImageItem> with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;
  bool isHover = false;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    animation = Tween(begin: 0.0, end: 1.0).animate(animationController);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bool isMobileWidth = DeviceWidthChecker.isMobileWidth(context);
    return MouseRegion(
      onHover: (_) {
        if (isHover) return;
        isHover = true;
        animationController.forward();
      },
      onExit: (_) {
        if (!isHover) return;
        isHover = false;

        animationController.reverse();
      },
      cursor: SystemMouseCursors.click,
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SizedBox(
                height: 170,
                width: 300,
                child: Transform.scale(
                  scale: 1.1,
                  child: AppImage(
                    image: widget.appItemImageModel.appImageAsset,
                    boxFit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
          ),
          if (!isMobileWidth)
            FadeTransition(
              opacity: animation,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 170,
                    width: 300,
                    color: Colors.black.withOpacity(.6),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ...widget.appItemImageModel.options.map((e) =>
                            AppItemImageOption(appItemImageOptionModel: e)),
                        if (widget.appItemImageModel.textBelow != null)
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 8),
                            alignment: Alignment.center,
                            child: Text(
                              widget.appItemImageModel.textBelow!,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                          )
                      ],
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:portfolio/config/config.dart';
import 'package:portfolio/core/images/images.dart';
import 'package:portfolio/models/app_item_model.dart';
import 'package:portfolio/providers/page_provider.dart';
import 'package:portfolio/services/alerts_service.dart';
import 'package:provider/provider.dart';

class AppItem extends StatefulWidget {
  const AppItem({
    Key? key,
    required this.appItemModel,
  }) : super(key: key);
  final AppItemModel appItemModel;
  @override
  State<AppItem> createState() => _AppItemState();
}

class _AppItemState extends State<AppItem> with TickerProviderStateMixin {
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
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        if (size.width > 700) return;
        final pageProvider = Provider.of<PageProvider>(context, listen: false);
        AlertsService.showDecoratedAlert(
            context: context,
            color: colors[pageProvider.currentIndex],
            icon: Icons.ads_click,
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  widget.appItemModel.textBelow!,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                ...widget.appItemModel.options
                    .map((e) => AppItemOption(appItemOptionModel: e))
                    .toList()
              ],
            ));
      },
      child: MouseRegion(
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
                    child: AppImage(
                      image: widget.appItemModel.appImageAsset,
                      boxFit: BoxFit.cover,
                    ),
                    scale: 1.1,
                  ),
                ),
              ),
            ),
            if (size.width > 700)
              FadeTransition(
                opacity: animation,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 170,
                      width: 300,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ...widget.appItemModel.options
                              .map((e) => AppItemOption(appItemOptionModel: e))
                              .toList(),
                          if (widget.appItemModel.textBelow != null)
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 15),
                              alignment: Alignment.center,
                              child: Text(
                                widget.appItemModel.textBelow!,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              ),
                            )
                        ],
                      ),
                      color: Colors.black.withOpacity(.6),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class AppItemOption extends StatefulWidget {
  const AppItemOption({
    Key? key,
    required this.appItemOptionModel,
  }) : super(key: key);
  final AppItemOptionModel appItemOptionModel;
  @override
  State<AppItemOption> createState() => _AppItemOptionState();
}

class _AppItemOptionState extends State<AppItemOption> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MouseRegion(
      cursor: widget.appItemOptionModel.cursor,
      onHover: (_) => setState(() => isHover = true),
      onExit: (_) => setState(() => isHover = false),
      child: GestureDetector(
        onTap: widget.appItemOptionModel.onTap,
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
                  widget.appItemOptionModel.text,
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

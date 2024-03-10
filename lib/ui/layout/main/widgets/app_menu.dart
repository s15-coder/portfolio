import 'package:flutter/material.dart';
import 'package:portfolio/config/config.dart';
import 'package:portfolio/providers/menu_provider.dart';
import 'package:portfolio/providers/page_provider.dart';
import 'package:provider/provider.dart';

class AppMenu extends StatelessWidget {
  const AppMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final pageProvider = Provider.of<PageProvider>(context);
    final menuProvider = Provider.of<MenuProvider>(context);
    return Stack(
      children: [
        if (menuProvider.isMenuOpen)
          GestureDetector(
            onTap: menuProvider.closeMenu,
            child: Container(
              width: size.width,
              height: size.height,
              color: Colors.black.withOpacity(.3),
            ),
          ),
        AnimatedPositioned(
          duration: const Duration(milliseconds: 300),
          right: menuProvider.isMenuOpen ? 0 : -500,
          child: Container(
            height: size.height,
            width: size.width > 500 ? 350 : (size.width * 0.7),
            decoration: _decorationMenu(pageProvider),
            child: Column(
              children: [
                const SizedBox(height: 30),
                MenuItem(
                  onTap: () {
                    pageProvider.goTo(0);
                    menuProvider.closeMenu();
                  },
                  text: 'Home',
                ),
                MenuItem(
                  onTap: () {
                    pageProvider.goTo(1);
                    menuProvider.closeMenu();
                  },
                  text: 'About',
                ),
                MenuItem(
                  onTap: () {
                    pageProvider.goTo(2);
                    menuProvider.closeMenu();
                  },
                  text: 'Projects',
                ),
                MenuItem(
                  onTap: () {
                    pageProvider.goTo(3);
                    menuProvider.closeMenu();
                  },
                  text: 'Certifications',
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  BoxDecoration _decorationMenu(PageProvider pageProvider) {
    return BoxDecoration(
      color: colors[pageProvider.currentIndex],
      boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(.2),
            offset: const Offset(-2, 00),
            blurRadius: 5),
      ],
    );
  }
}

class MenuItem extends StatefulWidget {
  const MenuItem({
    Key? key,
    required this.onTap,
    required this.text,
  }) : super(key: key);
  final String text;
  final void Function()? onTap;
  @override
  State<MenuItem> createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: MouseRegion(
        onHover: (_) {
          isHover = true;
          setState(() {});
        },
        onExit: (_) {
          isHover = false;
          setState(() {});
        },
        cursor: SystemMouseCursors.click,
        child: InkWell(
          onTap: widget.onTap,
          child: Container(
            color: isHover ? Colors.white.withOpacity(.1) : Colors.transparent,
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            width: double.infinity,
            child: Text(
              widget.text,
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}

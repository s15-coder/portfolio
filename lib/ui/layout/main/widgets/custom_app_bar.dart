import 'package:flutter/material.dart';
import 'package:portfolio/core/images/images.dart';
import 'package:portfolio/providers/menu_provider.dart';
import 'package:portfolio/ui/layout/main/widgets/contact_button.dart';
import 'package:provider/provider.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuProvider = Provider.of<MenuProvider>(context, listen: false);
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      margin: const EdgeInsets.only(top: 10),
      height: 50,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              top: 5,
            ),
            child: AppImage(image: AppImages.appIcon),
          ),
          const Spacer(),
          const ContactButton(),
          const SizedBox(width: 20),
          IconButton(
            onPressed: menuProvider.openMenu,
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
              size: 30,
            ),
          ),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}

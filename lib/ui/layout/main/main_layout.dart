import 'package:estebancoder/config/styles/styles.dart';
import 'package:estebancoder/ui/views/contact/contact_view.dart';
import 'package:flutter/material.dart';
import 'package:estebancoder/config/config.dart';
import 'package:estebancoder/ui/layout/main/widgets/custom_app_bar.dart';
import 'package:estebancoder/ui/views/experience/experience_view.dart';
import 'package:estebancoder/ui/views/projects/projects_view.dart';
import 'package:estebancoder/ui/views/welcome/welcome_view.dart';

class MainLayout extends StatelessWidget {
  const   MainLayout({Key? key, this.index = 0}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool isMobileWidth = DeviceWidthChecker.isMobileWidth(context);
    return Scaffold(
      body: Container(
        color: AppColors.navy,
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            ListView(
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              children: [
                const WelcomeView(),
                SizedBox(
                  height: !isMobileWidth ? UILayout.xxxlarge : UILayout.xxlarge,
                ),
                const ProjectsView(),
                SizedBox(
                  height: !isMobileWidth ? UILayout.xxxlarge : UILayout.xxlarge,
                ),
                const ExperienceView(),
                SizedBox(
                  height: !isMobileWidth ? UILayout.xxxlarge : UILayout.xxlarge,
                ),
                const ContactView()
              ],
            ),
            const CustomAppBar(),
          ],
        ),
      ),
    );
  }
}

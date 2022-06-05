import 'package:flutter/material.dart';
import 'package:portfolio/providers/page_provider.dart';
import 'package:portfolio/ui/layout/widgets/contact_button.dart';
import 'package:portfolio/ui/views/about/about_view.dart';
import 'package:portfolio/ui/views/certifications/certifications_view.dart';
import 'package:portfolio/ui/views/projects/projects_view.dart';
import 'package:portfolio/ui/views/welcome/welcome_view.dart';
import 'package:provider/provider.dart';

class MainLayout extends StatelessWidget {
  const MainLayout({Key? key, this.index = 0}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context, listen: false);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            PageView(
              scrollDirection: Axis.vertical,
              controller: pageProvider.pageController,
              physics: const BouncingScrollPhysics(),
              children: [
                const WelcomeView(),
                const AboutView(),
                const ProjectsView(),
                CertificationsView(),
              ],
            ),
            Container(
              width: size.width,
              margin: const EdgeInsets.only(top: 10),
              height: 50,
              child: Row(
                children: [
                  Container(
                      margin: const EdgeInsets.only(left: 10, top: 5),
                      child: Image.asset('app_icon.jpg')),
                  const Spacer(),
                  const ContactButton(),
                  const SizedBox(width: 20),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  const SizedBox(width: 20),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

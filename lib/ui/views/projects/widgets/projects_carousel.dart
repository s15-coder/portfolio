import 'package:flutter/material.dart';
import 'package:portfolio/config/constants.dart';
import 'package:portfolio/core/images/images.dart';
import 'package:portfolio/models/app_item_model.dart';
import 'package:portfolio/ui/views/projects/widgets/app_item.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsCarousel extends StatelessWidget {
  const ProjectsCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
        height: 150,
        width: size.width,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 40),
              child: AppItem(
                appItemModel: AppItemModel(
                  appImageAsset: AppImages.cashiersHelper,
                  textBelow: 'MOBILE APP',
                  options: [
                    AppItemOptionModel(
                      text: "Source code",
                      onTap: () {
                        launchUrl(
                          Uri.parse(AppConstants.cashiersHelperGithub),
                        );
                      },
                    ),
                    AppItemOptionModel(
                      text: "Play Store",
                      onTap: () {
                        launchUrl(
                          Uri.parse(AppConstants.cashiersHelperPlayStore),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            AppItem(
              appItemModel: AppItemModel(
                appImageAsset: AppImages.tasksList,
                textBelow: 'MOBILE APP',
                options: [
                  AppItemOptionModel(
                      text: "Source code",
                      onTap: () {
                        launchUrl(
                          Uri.parse(AppConstants.taskAppGithub),
                        );
                      }),
                  AppItemOptionModel(
                    onTap: () {
                      launchUrl(
                        Uri.parse(AppConstants.taskAppPlayStore),
                      );
                    },
                    text: "Play Store",
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 40),
              child: AppItem(
                appItemModel: AppItemModel(
                  appImageAsset: AppImages.rickAndMorty,
                  textBelow: 'MOBILE APP',
                  options: [
                    AppItemOptionModel(
                      onTap: () {
                        launchUrl(
                          Uri.parse(AppConstants.rickAndMortyGithub),
                        );
                      },
                      text: "Source code",
                    ),
                    AppItemOptionModel(
                      text: "Play Store",
                      cursor: SystemMouseCursors.forbidden,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

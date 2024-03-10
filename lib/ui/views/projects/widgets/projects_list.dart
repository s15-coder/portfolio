import 'package:flutter/material.dart';
import 'package:estebancoder/config/constants.dart';
import 'package:estebancoder/config/styles/styles.dart';
import 'package:estebancoder/core/images/images.dart';
import 'package:estebancoder/models/app_item_model.dart';
import 'package:estebancoder/ui/views/projects/widgets/app_item.dart';
import 'package:estebancoder/ui/views/projects/widgets/app_item_image.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsWidget extends StatelessWidget {
  const ProjectsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child: Column(
        children: [
          const SizedBox(height: UILayout.xxlarge),
          AppItem(
            appImageItem: AppImageItem(
              appItemImageModel: AppItemImageModel(
                appImageAsset: AppImages.cashiersHelper,
                textBelow: 'MOBILE APP',
                options: [
                  AppItemImageOptionModel(
                    text: "Source code",
                    onTap: () {
                      launchUrl(
                        Uri.parse(AppConstants.cashiersHelperGithub),
                      );
                    },
                  ),
                  AppItemImageOptionModel(
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
            textDirection: TextDirection.ltr,
            description:
                'This application is designed specifically for small businesses that lack a cashier system. It enables cashiers to easily create an inventory with prices for each item and seamlessly scan items in real-time, providing accurate pricing tailored to each customer\'s needs.',
            subtitle: 'SMALL MARKET APP',
            title: 'PROJECT 1',
          ),
          const SizedBox(height: UILayout.xxlarge),
          AppItem(
            appImageItem: AppImageItem(
              appItemImageModel: AppItemImageModel(
                appImageAsset: AppImages.tasksList,
                textBelow: 'MOBILE APP',
                options: [
                  AppItemImageOptionModel(
                      text: "Source code",
                      onTap: () {
                        launchUrl(
                          Uri.parse(AppConstants.taskAppGithub),
                        );
                      }),
                  AppItemImageOptionModel(
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
            textDirection: TextDirection.rtl,
            description:
                'It is an application designed to streamline task management. With its intuitive interface, you can effortlessly create, update, and delete tasks as needed, ensuring your workflow stays organized and efficient. In essence, it functions as a comprehensive task manager, offering seamless control over your tasks.',
            subtitle: 'TASKS LIST APP',
            title: 'PROJECT 2',
          ),
          const SizedBox(height: UILayout.xxlarge),
          AppItem(
            appImageItem: AppImageItem(
              appItemImageModel: AppItemImageModel(
                appImageAsset: AppImages.rickAndMorty,
                textBelow: 'MOBILE APP',
                options: [
                  AppItemImageOptionModel(
                    onTap: () {
                      launchUrl(
                        Uri.parse(AppConstants.rickAndMortyGithub),
                      );
                    },
                    text: "Source code",
                  ),
                ],
              ),
            ),
            textDirection: TextDirection.ltr,
            description:
                'This mobile application offers comprehensive insights into the world of the show Rick & Morty. Users can access detailed information about the characters, episodes, and all associated entities. Powered by the free API available at https://rickandmortyapi.com/, it provides a rich and immersive experience for fans of the series.',
            subtitle: 'RICK & MORTY APP',
            title: 'PROJECT 3',
          ),
          const SizedBox(height: UILayout.xxlarge),
        ],
      ),
    );
  }
}

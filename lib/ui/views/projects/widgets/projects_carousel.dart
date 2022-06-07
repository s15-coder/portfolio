import 'package:flutter/material.dart';
import 'package:portfolio/models/app_item_model.dart';
import 'package:portfolio/providers/carousel_provider.dart';
import 'package:portfolio/ui/views/projects/widgets/app_item.dart';
import 'package:provider/provider.dart';
import 'dart:js' as js;

class ProjectsCarousel extends StatelessWidget {
  ProjectsCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final carouselProvider = Provider.of<CarouselProvider>(context);
    final size = MediaQuery.of(context).size;
    return SizedBox(
        height: 150,
        width: size.width,
        child: GestureDetector(
          onTap: carouselProvider.slidingApps
              ? () => carouselProvider.stopSlidingApp()
              : null,
          child: ListView(
            controller: carouselProvider.appsController,
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                margin: EdgeInsets.only(left: 40),
                child: AppItem(
                  appItemModel: AppItemModel(
                    assetPath: 'apps/cashiers_helper.png',
                    textBelow: 'MOBILE APP',
                    options: [
                      AppItemOptionModel(
                        text: "Source code",
                        onTap: () => js.context.callMethod('open', [
                          ' https://github.com/s15-coder/Crashier-s-Helper'
                        ]),
                      ),
                      AppItemOptionModel(
                        text: "Play Store",
                        onTap: () => js.context.callMethod('open', [
                          'https://play.google.com/store/apps/details?id=com.crashiershelper.esteban'
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
              AppItem(
                appItemModel: AppItemModel(
                  assetPath: 'apps/tasks_list.png',
                  textBelow: 'MOBILE APP',
                  options: [
                    AppItemOptionModel(
                      text: "Source code",
                      onTap: () => js.context.callMethod(
                          'open', ['https://github.com/s15-coder/Task-App']),
                    ),
                    AppItemOptionModel(
                      onTap: () => js.context.callMethod('open', [
                        'https://play.google.com/store/apps/details?id=com.tasksapp.esteban'
                      ]),
                      text: "Play Store",
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 40),
                child: AppItem(
                  appItemModel: AppItemModel(
                    assetPath: 'apps/rick_and_morty.jpg',
                    textBelow: 'MOBILE APP',
                    options: [
                      AppItemOptionModel(
                        onTap: () => js.context.callMethod('open', [
                          'https://github.com/s15-coder/Rick-And-Morty-APP'
                        ]),
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
              AppItem(
                appItemModel: AppItemModel(
                  assetPath: 'apps/breaking_bad.jpg',
                  textBelow: 'WEB PAGE',
                  options: [
                    AppItemOptionModel(
                      onTap: () => js.context.callMethod('open',
                          ['https://github.com/s15-coder/Braking-Bad-Page']),
                      text: "Source code",
                    ),
                    AppItemOptionModel(
                      onTap: () => js.context.callMethod('open',
                          ['https://s15-coder.github.io/Braking-Bad-Page/']),
                      text: "Check page",
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 30),
                child: AppItem(
                  appItemModel: AppItemModel(
                    assetPath: 'apps/local_trello.jpg',
                    textBelow: 'WEB APP',
                    options: [
                      AppItemOptionModel(
                        onTap: () => js.context.callMethod('open',
                            ['https://github.com/s15-coder/localtrello']),
                        text: "Source code",
                      ),
                      AppItemOptionModel(
                        onTap: () => js.context.callMethod('open',
                            ['https://s15-coder.github.io/localtrello/']),
                        text: "Check page",
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

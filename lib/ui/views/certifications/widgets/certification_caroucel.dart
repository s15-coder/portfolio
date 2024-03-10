import 'package:flutter/material.dart';
import 'package:portfolio/config/constants.dart';
import 'package:portfolio/core/images/images.dart';
import 'package:portfolio/models/app_item_model.dart';
import 'package:portfolio/ui/views/projects/widgets/app_item.dart';
import 'package:url_launcher/url_launcher.dart';

class CertificatonCaroucel extends StatelessWidget {
  const CertificatonCaroucel({Key? key}) : super(key: key);

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
                  appImageAsset: AppImages.basicFlutter,
                  textBelow: 'FLUTTER BASIC',
                  options: [
                    AppItemOptionModel(
                      text: "View on Udemy",
                      onTap: () {
                        launchUrl(
                          Uri.parse(
                            AppConstants.udemyFlutterCertificate1,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            AppItem(
              appItemModel: AppItemModel(
                appImageAsset: AppImages.advancedFlutter,
                textBelow: 'ADVANCED FLUTTER',
                options: [
                  AppItemOptionModel(
                      text: "View on Udemy",
                      onTap: () {
                        launchUrl(
                          Uri.parse(
                            AppConstants.udemyFlutterCertificate2,
                          ),
                        );
                      }),
                ],
              ),
            ),
            AppItem(
              appItemModel: AppItemModel(
                appImageAsset: AppImages.flutterWeb,
                textBelow: 'FLUTTER WEB',
                options: [
                  AppItemOptionModel(
                    onTap: () {
                      launchUrl(
                        Uri.parse(
                          AppConstants.udemyFlutterCertificate3,
                        ),
                      );
                    },
                    text: "View on Udemy",
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

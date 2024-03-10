import 'package:flutter/material.dart';
import 'package:estebancoder/config/constants.dart';
import 'package:estebancoder/core/images/images.dart';
import 'package:estebancoder/models/app_item_model.dart';
import 'package:estebancoder/ui/views/projects/widgets/app_item_image.dart';
import 'package:url_launcher/url_launcher.dart';

class CertificatonCaroucel extends StatelessWidget {
  const CertificatonCaroucel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppImageItem(
          appItemImageModel: AppItemImageModel(
            appImageAsset: AppImages.basicFlutter,
            textBelow: 'FLUTTER BASIC',
            options: [
              AppItemImageOptionModel(
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
        AppImageItem(
          appItemImageModel: AppItemImageModel(
            appImageAsset: AppImages.advancedFlutter,
            textBelow: 'ADVANCED FLUTTER',
            options: [
              AppItemImageOptionModel(
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
        AppImageItem(
          appItemImageModel: AppItemImageModel(
            appImageAsset: AppImages.flutterWeb,
            textBelow: 'FLUTTER WEB',
            options: [
              AppItemImageOptionModel(
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
    );
  }
}

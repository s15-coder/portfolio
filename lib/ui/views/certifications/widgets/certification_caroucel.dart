import 'package:flutter/material.dart';
import 'package:portfolio/models/app_item_model.dart';
import 'package:portfolio/providers/carousel_provider.dart';
import 'package:portfolio/ui/views/projects/widgets/app_item.dart';
import 'package:provider/provider.dart';
import 'dart:js' as js;

class CertificatonCaroucel extends StatelessWidget {
  CertificatonCaroucel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final carouselProvider = Provider.of<CarouselProvider>(context);
    final size = MediaQuery.of(context).size;
    return Container(
        height: 150,
        width: size.width,
        child: GestureDetector(
          onTap: carouselProvider.slidingCertifications
              ? () => carouselProvider.stopSlidingCertification()
              : null,
          child: ListView(
            controller: carouselProvider.certificationsController,
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                margin: EdgeInsets.only(left: 40),
                child: AppItem(
                  appItemModel: AppItemModel(
                    assetPath: 'certifications/basic_flutter.jpg',
                    textBelow: 'FLUTTER BASIC',
                    options: [
                      AppItemOptionModel(
                        text: "View on Udemy",
                        onTap: () => js.context.callMethod('open', [
                          'https://www.udemy.com/certificate/UC-48295aab-b307-4aad-8c32-7ae970c64c11/'
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
              AppItem(
                appItemModel: AppItemModel(
                  assetPath: 'certifications/advanced_flutter.jpg',
                  textBelow: 'ADVANCED FLUTTER',
                  options: [
                    AppItemOptionModel(
                      text: "View on Udemy",
                      onTap: () => js.context.callMethod('open', [
                        'https://www.udemy.com/certificate/UC-f35ee0aa-99f9-43e5-93d3-8b1f273a438b/'
                      ]),
                    ),
                  ],
                ),
              ),
              AppItem(
                appItemModel: AppItemModel(
                  assetPath: 'certifications/flutter_web.jpg',
                  textBelow: 'FLUTTER WEB',
                  options: [
                    AppItemOptionModel(
                      onTap: () => js.context.callMethod('open', [
                        'https://www.udemy.com/certificate/UC-5305f116-6e47-43c5-ab91-ac20cd6368ae/'
                      ]),
                      text: "View on Udemy",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

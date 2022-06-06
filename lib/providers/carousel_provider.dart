import 'dart:async';

import 'package:flutter/material.dart';

class CarouselProvider extends ChangeNotifier {
  bool slidingApps = false;
  ScrollController appsController = ScrollController();
  Timer? _slidingAppsTimer;

  bool slidingCertifications = false;
  ScrollController certificationsController = ScrollController();
  Timer? _slidingcertificationsTimer;

  void startSlidingCertification() {
    slidingCertifications = true;
    _slidingcertificationsTimer =
        Timer.periodic(const Duration(milliseconds: 150), (timer) {
      try {
        final nextPosition = certificationsController.position.pixels + 10 >
                certificationsController.position.maxScrollExtent
            ? 0
            : certificationsController.position.pixels + 10;
        certificationsController.animateTo(
          nextPosition.toDouble(),
          duration: const Duration(milliseconds: 150),
          curve: Curves.easeInToLinear,
        );
      } catch (e) {
        stopSlidingCertification();
      }
    });
    notifyListeners();
  }

  void stopSlidingCertification() {
    slidingCertifications = false;

    _slidingcertificationsTimer?.cancel();
    notifyListeners();
  }

  void startSlidingApp() {
    slidingApps = true;
    _slidingAppsTimer =
        Timer.periodic(const Duration(milliseconds: 150), (timer) {
      try {
        final nextPosition = appsController.position.pixels + 10 >
                appsController.position.maxScrollExtent
            ? 0
            : appsController.position.pixels + 10;
        appsController.animateTo(
          nextPosition.toDouble(),
          duration: const Duration(milliseconds: 150),
          curve: Curves.easeInToLinear,
        );
      } catch (e) {
        stopSlidingApp();
      }
    });
    notifyListeners();
  }

  void stopSlidingApp() {
    slidingApps = false;

    _slidingAppsTimer?.cancel();
    notifyListeners();
  }
}

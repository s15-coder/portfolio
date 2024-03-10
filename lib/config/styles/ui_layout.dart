part of './styles.dart';

class UILayout {
  static const double xxsmall = 2;
  static const double xsmall = 4;
  static const double small = 8;
  static const double medium = 16;
  static const double large = 24;
  static const double xlarge = 32;
  static const double xxlarge = 48;
  static const double xxxlarge = 96;
}

class DeviceWidthChecker {
  static bool isMobileWidth(BuildContext context) {
    // Get the device's screen width using MediaQuery
    double screenWidth = MediaQuery.of(context).size.width;

    // Define the threshold width for mobile devices (you can adjust this threshold as needed)
    const double mobileWidthThreshold = 700.0;

    // Check if the screen width is less than the threshold to determine if it's a mobile device
    return screenWidth < mobileWidthThreshold;
  }
}

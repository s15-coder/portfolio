part of 'images.dart';

String _s3Bucket = 'https://mobile-developer-assets.s3.us-west-1.amazonaws.com';

class AppImageAsset {
  AppImageAsset({
    required this.name,
    this.ref,
    this.ext = 'png',
  });

  final String name;
  final String ext;
  final String? ref;

  String get path {
    if (ref == null) {
      return '$_s3Bucket/$name.$ext';
    }
    return '$_s3Bucket/$ref/$name.$ext';
  }
}

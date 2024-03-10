part of 'images.dart';

String _s3Bucket = 'https://mobile-developer-assets.s3.us-west-1.amazonaws.com';

class AppImageAsset {
  AppImageAsset({
    required this.name,
    this.ext = 'png',
  });

  final String name;
  final String ext;

  String get path => '$_s3Bucket/$name.$ext';
}

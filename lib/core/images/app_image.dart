part of 'images.dart';

class AppImage extends StatelessWidget {
  const AppImage({
    Key? key,
    required this.image,
    this.width,
    this.height,
    this.placeholder,
    this.boxFit,
    this.color,
    this.useCache = false,
  }) : super(key: key);
  final AppImageAsset image;
  final double? width;
  final double? height;
  final Widget? placeholder;
  final BoxFit? boxFit;
  final Color? color;
  final bool useCache;
  @override
  Widget build(BuildContext context) {
    return Image.network(
      image.path,
      fit: boxFit ?? BoxFit.contain,
      height: height,
      width: width,
      alignment: Alignment.center,
      loadingBuilder: (_, child, progress) {
        if (progress == null) return child;
        if (placeholder == null) return child;
        return placeholder!;
      },
    );
  }
}

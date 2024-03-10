part of 'styles.dart';

class UIPadding {
  static const EdgeInsets paddingV2 = EdgeInsets.symmetric(
    vertical: UILayout.xxsmall,
  );
  static const EdgeInsets paddingV8 = EdgeInsets.symmetric(
    vertical: UILayout.small,
  );
  static const EdgeInsets paddingV16 = EdgeInsets.symmetric(
    vertical: UILayout.medium,
  );
  static const EdgeInsets paddingV24 = EdgeInsets.symmetric(
    vertical: UILayout.large,
  );
  static const EdgeInsets paddingV32 = EdgeInsets.symmetric(
    vertical: UILayout.xlarge,
  );

  static const EdgeInsets paddingH8 = EdgeInsets.symmetric(
    horizontal: UILayout.small,
  );
  static const EdgeInsets paddingH16 = EdgeInsets.symmetric(
    horizontal: UILayout.medium,
  );
  static const EdgeInsets paddingH24 = EdgeInsets.symmetric(
    horizontal: UILayout.large,
  );
  static const EdgeInsets paddingH32 = EdgeInsets.symmetric(
    horizontal: UILayout.xlarge,
  );

  static const EdgeInsets padding_8 = EdgeInsets.all(UILayout.small);
  static const EdgeInsets padding_16 = EdgeInsets.all(UILayout.medium);
  static const EdgeInsets padding_24 = EdgeInsets.all(UILayout.large);
  static const EdgeInsets padding_32 = EdgeInsets.all(UILayout.xlarge);

  static const EdgeInsets paddingV8H16 = EdgeInsets.symmetric(
    horizontal: UILayout.medium,
    vertical: UILayout.small,
  );
}

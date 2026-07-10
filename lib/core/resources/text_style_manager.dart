import 'package:flutter/widgets.dart';
import 'package:nft_marketplace/core/resources/color_value_manager.dart';
import 'package:nft_marketplace/core/resources/fonts_name_manager.dart';

abstract class TextStyles {
  TextStyles._();

  static const TextStyle s20w700 = TextStyle(
    fontFamily: Fonts.sfProDisplay,
    color: MyColors.white,
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle s26w600 = TextStyle(
    fontFamily: Fonts.sfProDisplay,
    color: MyColors.white,
    fontSize: 26,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle s20w600 = TextStyle(
    fontFamily: Fonts.sfProDisplay,
    color: MyColors.white,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle s12w400 = TextStyle(
    fontFamily: Fonts.sfProDisplay,
    color: MyColors.white,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle s14w600 = TextStyle(
    fontFamily: Fonts.sfProDisplay,
    color: MyColors.white,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle s30w900 = TextStyle(
    fontFamily: Fonts.sfProDisplay,
    color: MyColors.white,
    fontSize: 30,
    fontWeight: FontWeight.w900,
  );
}

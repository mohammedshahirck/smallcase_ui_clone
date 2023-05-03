import 'package:flutter/material.dart';
import 'package:smallcase/helpers/colors.dart';

class TextStyles {
  static const title = TextStyle(
      color: ColorPellets.mainText, fontSize: 20, fontWeight: FontWeight.bold);
  static const subtitle = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 16,
      color: ColorPellets.whitecolor);
  static const contenttext = TextStyle(
    color: ColorPellets.iconColor,
    fontSize: 14,
  );
  static const maincontent = TextStyle(
    color: ColorPellets.iconColor,
    fontSize: 14.5,
  );
  static const wmaincontent = TextStyle(
    color: ColorPellets.mainText,
    fontSize: 14.5,
  );
}

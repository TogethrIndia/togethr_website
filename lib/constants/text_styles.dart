import 'package:flutter/material.dart';

import 'package:togethr_website/constants/app_colors.dart';
import 'package:togethr_website/constants/size_config.dart';

TextStyle semiBoldStyle400GalanoAlt({double fontSize = 16.0, Color? fontColor, required BuildContext? context}) =>
    TextStyle(
      fontFamily: 'GalanoClassicAlt',
      color: fontColor ?? AppColors.black,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      fontSize: fontSize,
    );

TextStyle semiBoldStyle600GalanoAlt({required BuildContext? context, double fontSize = 14.0, Color? fontColor}) =>
    TextStyle(
      fontFamily: 'GalanoClassicAlt',
      color: fontColor ?? AppColors.black,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
      fontSize: fontSize,
    );

TextStyle semiBoldStyle500GalanoAlt({required BuildContext context, double fontSize = 16.0, Color? fontColor}) =>
    TextStyle(
        fontFamily: 'GalanoClassicAlt',
        color: fontColor ?? AppColors.black,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        fontSize: fontSize * SizeConfig.textMultiplier);

TextStyle boldStyleGalanoAlt({
  @required BuildContext? context,
  double fontSize = 32.0,
  Color? fontColor,
  bool underLine = false,
  bool lineThrough = false,
}) {
  return TextStyle(
    decoration: (underLine
        ? TextDecoration.underline
        : lineThrough
            ? TextDecoration.lineThrough
            : null),
    fontFamily: 'GalanoClassicAlt',
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    fontSize: fontSize * SizeConfig.textMultiplier,
    color: fontColor ?? AppColors.black,
  );
}

TextStyle semiBoldStyle400Galano({double fontSize = 16.0, Color? fontColor, required BuildContext? context}) =>
    TextStyle(
      fontFamily: 'GalanoClassic',
      color: fontColor ?? AppColors.black,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      fontSize: fontSize,
    );

TextStyle semiBoldStyle600Galano({required BuildContext? context, double fontSize = 14.0, Color? fontColor}) =>
    TextStyle(
      fontFamily: 'GalanoClassic',
      color: fontColor ?? AppColors.black,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
      fontSize: fontSize,
    );

TextStyle semiBoldStyle500Galano({required BuildContext context, double fontSize = 16.0, Color? fontColor}) =>
    TextStyle(
        fontFamily: 'GalanoClassic',
        color: fontColor ?? AppColors.black,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        fontSize: fontSize * SizeConfig.textMultiplier);

TextStyle boldStyleGalano({
  @required BuildContext? context,
  double fontSize = 32.0,
  Color? fontColor,
  bool underLine = false,
  bool lineThrough = false,
}) {
  return TextStyle(
    decoration: (underLine
        ? TextDecoration.underline
        : lineThrough
            ? TextDecoration.lineThrough
            : null),
    fontFamily: 'GalanoClassic',
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    fontSize: fontSize * SizeConfig.textMultiplier,
    color: fontColor ?? AppColors.black,
  );
}

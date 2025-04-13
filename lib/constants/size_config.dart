// import 'package:flow/util/services/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SizeConfig {
  static double? screenWidth;
  static double? screenHeight;
  static double _blockSizeHorizontal = 0;
  static double _blockSizeVertical = 0;
  static double textMultiplier = 1.0;
  static double imageSizeMultiplier = 1.0;
  static double heightMultiplier = 1.0;
  static double widthMultiplier = 1.0;
  static bool isPortrait = true;
  static bool isMobilePortrait = false;
  // static EdgeInsets viewInsets;
  void init(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    // viewInsets = MediaQuery.of(NavigationService.navigatorKey.currentContext).viewInsets;
    isPortrait = true;
    if (screenWidth! < 450) {
      isMobilePortrait = true;
    }

    _blockSizeHorizontal = screenWidth! / 100;
    _blockSizeVertical = screenHeight! / 100;
    textMultiplier = 1.0;
    imageSizeMultiplier = _blockSizeHorizontal / 3.6;
    heightMultiplier = 1.0;
    widthMultiplier = 1.0;
    // textMultiplier = 1.sp;
    // imageSizeMultiplier = 1;
    // heightMultiplier = 1.h;
    // widthMultiplier = 1.w;
  }
}

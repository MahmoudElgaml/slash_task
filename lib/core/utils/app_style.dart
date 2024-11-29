
import 'package:flutter/material.dart';
import 'package:slash_task/core/utils/app_color.dart';

class AppStyle {
  static  TextStyle style13Regular (BuildContext context) {
   return  TextStyle(
     fontFamily: 'NetflixSans',
      color: AppColor.whiteColorWithOpcity,
      fontSize: responsiveFont(fontSize: 13, context: context),
      fontWeight: FontWeight.w400,
    );
  }
  static  TextStyle style14Regular (BuildContext context) {
   return  TextStyle(
     fontFamily: 'NetflixSans',
      fontSize: responsiveFont(fontSize: 14, context: context),
      fontWeight: FontWeight.w400,
     color: AppColor.whiteColor,
    );
  }
  static  TextStyle style31Bold (BuildContext context) {
   return  TextStyle(
     fontFamily: 'NetflixSans',
      color: AppColor.whiteColor,
      fontSize: responsiveFont(fontSize: 31, context: context),
      fontWeight: FontWeight.bold,
    );
  }
  static  TextStyle style27Bold (BuildContext context) {
   return  TextStyle(
     fontFamily: 'NetflixSans',
      color: AppColor.whiteColor,
      fontSize: responsiveFont(fontSize: 27, context: context),
      fontWeight: FontWeight.bold,
    );
  }
  static  TextStyle style11Medium (BuildContext context) {
   return  TextStyle(
     color: AppColor.whiteColor,
     fontFamily: 'NetflixSans',
      fontSize: responsiveFont(fontSize: 11, context: context),
      fontWeight: FontWeight.w500,
    );
  }
  static  TextStyle style13Medium (BuildContext context) {
   return  TextStyle(
     fontFamily: 'NetflixSans',
      fontSize: responsiveFont(fontSize: 13, context: context),
      fontWeight: FontWeight.w500,
    );
  }
  static  TextStyle style17Medium (BuildContext context) {
   return  TextStyle(
     fontFamily: 'NetflixSans',
      color: AppColor.whiteColor,
      fontSize: responsiveFont(fontSize: 17, context: context),
      fontWeight: FontWeight.w500,
    );
  }







  static double scaleFactor(double width) {
    if (width < 500) {
      return width / 400;
    } else if (width > 1200) {
      return width / 1000;
    } else {
      return width / 300;
    }
  }

  static double responsiveFont(
      {required double fontSize, required BuildContext context}) {
    double width = MediaQuery.of(context).size.width;
    double scalefactor = scaleFactor(width);
    double lowerLimit = fontSize * .8;
    double upperLimit = fontSize * 1.3;

    double responsiveFont = fontSize * scalefactor;
    return responsiveFont.clamp(lowerLimit, upperLimit);
  }
}

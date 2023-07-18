import 'package:flutter/material.dart';
import 'package:vibe_up/utils/colors.dart';

@immutable
class AppTheme {

  const AppTheme._();

  static ThemeData defineLight() {
    return ThemeData(
        fontFamily: 'Poppins',
        primaryColor: AppColors.pastel_blue_8EA7E9,
        scaffoldBackgroundColor: AppColors.backgroundColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: AppColors().secondaryColor)
            .copyWith(background: AppColors.backgroundColor));
  }

  // static ThemeData defineDark() {
  //   return ThemeData(
  //       fontFamily: 'Poppins',
  //       primaryColor: AppColors().pastel_blue_8cbbf1,
  //       scaffoldBackgroundColor: AppColors().backGroundColor,
  //       visualDensity: VisualDensity.adaptivePlatformDensity,
  //       colorScheme: ColorScheme.fromSwatch()
  //           .copyWith(secondary: AppColors().secondaryColor)
  //           .copyWith(background: AppColors().backGroundColor));
  // }
}

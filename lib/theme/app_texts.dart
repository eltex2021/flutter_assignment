import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppTexts {
  static const bottomSelectedText = TextStyle(
    color: AppColors.mainBlue,
    fontSize: 12,
    letterSpacing: 0.25,
    height: 1.2,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );
  static const bottomUnselectedText = TextStyle(
    color: AppColors.pureBlue,
    fontSize: 12,
    letterSpacing: 0.25,
    height: 1.2,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );
  static const buttonText = TextStyle(
    color: AppColors.mainWhite,
    fontSize: 16,
    letterSpacing: 0.25,
    height: 1.2,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
  );
  static const buttonBlueText = TextStyle(
    color: AppColors.mainBlue,
    fontSize: 16,
    letterSpacing: 0.25,
    height: 1.2,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
  );
  static const countryText = TextStyle(
    color: AppColors.mainBlack,
    fontSize: 18,
    letterSpacing: 0.3,
    height: 1.2,
    fontWeight: FontWeight.w800,
    fontStyle: FontStyle.normal,
  );
}

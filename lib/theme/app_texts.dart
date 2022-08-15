import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppTexts {

  static const bottomSelectedText = TextStyle(
    color: AppColors.mainBlue,
    fontSize: 12,
    letterSpacing: 0.25,
    height: 1.176,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );
  static const bottomUnselectedText = TextStyle(
    color: AppColors.pureBlue,
    fontSize: 12,
    letterSpacing: 0.25,
    height: 1.176,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );
}
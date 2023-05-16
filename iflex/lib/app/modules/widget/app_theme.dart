import 'package:flutter/material.dart';
import 'package:iflex/app/modules/widget/app_colors.dart';



class AppTheme {
  static final appTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.white,
      elevation: 5,
    ),
  );
}

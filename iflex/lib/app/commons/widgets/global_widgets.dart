import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:iflex/app/commons/constants/app_colors.dart';

class GlobalWidgets {
  static ClipRRect buttonWidget(
      {required String? text,
      VoidCallback? press,
      Color? color,
      Color? textColor}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(color: color ?? AppColors.primaryColor),
        child: TextButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryColor,
              elevation: 0.0,
              shadowColor: AppColors.primaryColor,
              foregroundColor: AppColors.primaryColor),
          onPressed: press,
          child: Text(
            text ?? '',
            style: TextStyle(
                color: textColor ?? AppColors.blackColor,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  static Future customLoader() {
    return Get.dialog(
      const SpinKitThreeBounce(
        color: Colors.white,
        size: 40,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medbok/core/theming/colors.dart';
import 'package:medbok/core/theming/font_wieght_helper.dart';

class AppTextStyles {
  static TextStyle font24Black70Weight = TextStyle(
    fontSize: 24.sp,
    color: Colors.black,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font24BlueBlod = TextStyle(
    fontSize: 24.sp,
    color: ColorsManager.mainBlue,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32.sp,
    color: ColorsManager.mainBlue,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font16WhiteSemiBokd = TextStyle(
    fontSize: 16.sp,
    color: Colors.white,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font13GeryReguler = TextStyle(
    fontSize: 13.sp,
    color: ColorsManager.gery,
    fontWeight: FontWeightHelper.regular,
  );
}

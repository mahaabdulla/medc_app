import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medbok/core/theming/colors.dart';

class AppTextStyles {
  static TextStyle font24Black70Weight = TextStyle(
    fontSize: 24.sp,
    color: Colors.black,
    fontWeight: FontWeight.w700,
  );

  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32.sp,
    color: ColorsManager.mainBlue,
    fontWeight: FontWeight.bold,
  );
  static TextStyle font16WhiteSemiBokd = TextStyle(
    fontSize: 16.sp,
    color: Colors.white,
    fontWeight: FontWeight.w700,
  );
  static TextStyle font13GeryReguler = TextStyle(
    fontSize: 13.sp,
    color: ColorsManager.gery,
    fontWeight: FontWeight.normal,
  );
}

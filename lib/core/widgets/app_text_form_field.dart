import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medbok/core/theming/colors.dart';
import 'package:medbok/core/theming/styles.dart';

class AppTextFormField extends StatelessWidget {

  final EdgeInsetsGeometry? contentPadding;
  final String hintText;
  final Widget? suffixIcon;
  final bool isObscure;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? hintStyle;
  final TextStyle? inputTextStyle;

  const AppTextFormField({super.key,
   this.contentPadding, 
   required this.hintText,
    this.suffixIcon,
     required this.isObscure, 
     this.focusedBorder, 
     this.enabledBorder, 
     this.hintStyle, 
     this.inputTextStyle});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText:isObscure ??false,
      style: TextStyles.font13DarkBlueRegular,
      decoration: InputDecoration(
        hint: Text(hintText),
        suffixIcon: suffixIcon,
        hintStyle:  hintStyle ?? TextStyles.font14LightGrayRegular
  ,
        isDense: true,
        contentPadding:contentPadding ?? EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
        focusedBorder:  focusedBorder ?? OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(
            color: ColorsManager.mainBlue,
            width: 1.5.w,
          ),
        ),
        enabledBorder: enabledBorder ?? OutlineInputBorder(
             borderRadius: BorderRadius.circular(16.r),
           borderSide: BorderSide(color: ColorsManager.lighterGray
          , width: 1.5.w,)
        )
      ),
    );
  }
}
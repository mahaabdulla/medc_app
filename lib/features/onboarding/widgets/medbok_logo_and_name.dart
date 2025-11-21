import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medbok/core/theming/styles.dart';

class MedbokLogoAndName extends StatelessWidget {
  const MedbokLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/svg/app_logo.svg', width: 50.w, height: 50.h),
        SizedBox(width: 10.w),
        Text('MedBok', style: TextStyles.font24BlueBold),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medbok/core/theming/styles.dart';

class MedbokImageAndText extends StatelessWidget {
  const MedbokImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: SvgPicture.asset('assets/svg/med_logo_low_opacity.svg'),
        ),

        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.white.withOpacity(0.0)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: [0.14, 0.4],
            ),
          ),
          child: Image.asset('assets/images/onboardung_doctor.png'),
        ),
        Positioned(
          left: 80.w,
          bottom: 0.h,
          child: Text(
            'Best Doctor\nAppointment App',
            textAlign: TextAlign.center,
            style: TextStyles.font32BlueBold
           
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medbok/core/theming/styles.dart';
import 'package:medbok/features/onboarding/widgets/get_started_button.dart';
import 'package:medbok/features/onboarding/widgets/medbok_image_and_text.dart';
import 'package:medbok/features/onboarding/widgets/medbok_logo_and_name.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
            child: Column(
              children: [
                const MedbokLogoAndName(),
                SizedBox(height: 10.h),
                const MedbokImageAndText(),
                SizedBox(height: 10.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                        'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                        style: AppTextStyles.font13GeryReguler,
                      ),
                      SizedBox(height: 30.h),
                      GetStartedButton(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

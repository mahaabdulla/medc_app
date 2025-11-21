import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medbok/core/helpers/spacing.dart';
import 'package:medbok/core/theming/styles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome Back', style: AppTextStyles.font24BlueBlod),
                verticalSpace(20),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: AppTextStyles.font13GeryReguler.copyWith(
                    fontSize: 14.sp,
                  ),
                ),
                verticalSpace(36),
                Form(child: Column(children: [TextFormField()])),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

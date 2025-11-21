import 'package:flutter/material.dart';
import 'package:medbok/core/theming/font_wieght_helper.dart';
import 'package:medbok/core/theming/styles.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'Don\'t have an account?',
        style: TextStyles.font13GrayRegular,
        children: [
          TextSpan(
            text: ' Sign Up',
            style: TextStyles.font13BlueRegular.copyWith(fontWeight: FontWeightHelper.bold),
          )
        ],
      ),
    );
  }
}
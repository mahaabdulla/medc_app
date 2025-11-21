import 'package:flutter/material.dart';
import 'package:medbok/core/theming/font_wieght_helper.dart';
import 'package:medbok/core/theming/styles.dart';

class TermAndConditionText extends StatelessWidget {
  const TermAndConditionText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'By creating an account, you agree to our',
        style: TextStyles.font13GrayRegular.copyWith(fontWeight: FontWeightHelper.medium),
        children: [
          TextSpan(
            text: ' Terms and Conditions',
          
            style: TextStyles.font13BlueRegular.copyWith(fontWeight: FontWeightHelper.bold, height: 1.5),
          ),
        ],
      ),
    );
  }
}
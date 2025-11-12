import 'package:flutter/material.dart';
import 'package:medbok/core/theming/colors.dart';
import 'package:medbok/core/theming/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        backgroundColor: WidgetStateProperty.all(ColorsManager.mainBlue),
        minimumSize: WidgetStateProperty.all(Size(double.infinity, 52)),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(16),
          ),
        ),
      ),

      onPressed: () {
        //TODO ON TAP LOGIC
      },
      child: Text('Get Started', style: AppTextStyles.font16WhiteSemiBokd),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MedbokImageAndText extends StatelessWidget {
  const MedbokImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [SvgPicture.asset('assets/svg/med_logo_low_opacity.svg')],
    );
  }
}

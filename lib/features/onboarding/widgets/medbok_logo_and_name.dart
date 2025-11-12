import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MedbokLogoAndName extends StatelessWidget {
  const MedbokLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/svg/medbok_logo.png',
          width: 50,
          height: 50,
        ),
        const SizedBox(width: 10),
        const Text(
          'MedBok',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],

    );
  }
}
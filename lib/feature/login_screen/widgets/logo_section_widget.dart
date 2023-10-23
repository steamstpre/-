import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LogoSectionWidget extends StatelessWidget {
  const LogoSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: double.infinity,
          child: SvgPicture.asset(
            'assets/imgs/logo_eiva.svg',
          ),
        ),
        Text(
          'family tree',
          style:
              Theme.of(context).textTheme.labelMedium?.copyWith(fontSize: 20),
        ),
      ],
    );
  }
}

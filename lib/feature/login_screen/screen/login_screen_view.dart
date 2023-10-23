import 'package:eiva/feature/login_screen/widgets/login_by_phone_widget.dart';
import 'package:eiva/feature/login_screen/widgets/logo_section_widget.dart';
import 'package:flutter/material.dart';

class LoginScreenView extends StatelessWidget {
  const LoginScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LogoSectionWidget(),
        SizedBox(
          height: 10,
        ),
        LoginByPhoneWidget(),
      ],
    );
  }
}

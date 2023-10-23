import 'package:eiva/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  void initState() {
    super.initState();
    if (context.mounted) {
      Future.delayed(const Duration(seconds: 1), () {
        if (mounted) {
          context.go(AppConsts.pathToLoginScreen);
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SvgPicture.asset(AppConsts.pathToLogo),
              // Text(
              //   AppLocalizations.of(context)!.nameOfApp,
              //   style: Theme.of(context).textTheme.bodyLarge,
              // )
            ],
          ),
        ),
      ),
    );
  }
}

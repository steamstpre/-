import 'package:eiva/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

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
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Lottie.asset('assets/lottie/animation1.json'),
      ),
    );
  }
}

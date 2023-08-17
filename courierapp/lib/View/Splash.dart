import 'package:courierapp/View/Onboarding.dart';
import 'package:flutter/material.dart';

import '../assets/assets.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _nevigatehome();
  }

  _nevigatehome() async {
    await Future.delayed(const Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const onboarding()));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height:812,
        width: 375,
        color: Colors.white,
        child: Image.asset(ImageAssets.splash),
      ),
    );
  }
}

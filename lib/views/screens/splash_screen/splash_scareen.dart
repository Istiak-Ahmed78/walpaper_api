import 'package:flutter/material.dart';
import 'components/splash_body.dart';

class SpleshScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SplashScreenBody()),
    );
  }
}

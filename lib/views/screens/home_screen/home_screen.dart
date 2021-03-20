import 'package:flutter/material.dart';
import 'package:new_to_edit/views/styles/styles.dart';
import 'components/header_part.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kDPadding),
          child: Column(
            children: [
              SizedBox(
                height: screenHeight(context) * 0.07,
              ),
              HeaderPart(),
            ],
          ),
        ),
      ),
    );
  }
}

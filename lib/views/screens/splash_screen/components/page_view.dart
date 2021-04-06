import 'package:flutter/material.dart';

class PageViewContent extends StatelessWidget {
  final String? text;
  final String? imageAdress;
  PageViewContent({this.text, this.imageAdress});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Spacer(),
        Text(
          text!,
          textAlign: TextAlign.center,
        ),
        Spacer(
          flex: 7,
        ),
        Image.asset(
          imageAdress!,
          height: 260,
          width: 265,
        )
      ],
    );
  }
}

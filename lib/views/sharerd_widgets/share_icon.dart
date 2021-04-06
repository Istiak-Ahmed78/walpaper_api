import 'package:flutter/material.dart';
import 'package:new_to_edit/views/styles/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShareIcon extends StatelessWidget {
  final String? shareIcon;
  ShareIcon({this.shareIcon});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.all(12),
      height: 40,
      width: 40,
      decoration: BoxDecoration(shape: BoxShape.circle, color: kLightWhite),
      child: SvgPicture.asset(shareIcon),
    );
  }
}

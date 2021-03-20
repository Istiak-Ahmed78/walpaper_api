import 'package:flutter/material.dart';
import 'package:new_to_edit/constants.dart';
import 'package:new_to_edit/views/styles/colors.dart';
import 'package:new_to_edit/views/styles/padding.dart';

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          fillColor: kLightSecondryColor,
          filled: true,
          prefixIcon: Icon(Icons.search),
          enabledBorder: textFieldRadius,
          hintText: 'Search Products',
          prefixStyle: TextStyle(color: kSecondaryColor),
          hintStyle: TextStyle(color: kSecondaryColor),
          focusedBorder: textFieldRadius),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EveryTextField extends StatelessWidget {
  final String? hintText;
  final String? helperText;
  final String? preFix;
  final TextEditingController? textEditingController;
  EveryTextField(
      {this.helperText,
      this.textEditingController,
      this.hintText,
      this.preFix});
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
          hintText: helperText,
          // helperText: helperText,
          labelText: hintText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30))),
          suffixIcon: Padding(
            padding: EdgeInsets.all(20),
            child: SvgPicture.asset(
              preFix,
              height: 18,
              width: 18,
            ),
          )),
    );
  }
}

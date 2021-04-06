import 'package:flutter/material.dart';
import 'package:new_to_edit/constants.dart';
import 'package:new_to_edit/views/styles/styles.dart';

class SingleOTP extends StatelessWidget {
  final TextEditingController? otpController;
  final FocusNode? focusNode;
  final ValueChanged<String>? onChanged;
  SingleOTP({this.focusNode, this.otpController, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: optWeidth,
      child: TextField(
        keyboardType: TextInputType.number,
        onChanged: onChanged,
        focusNode: focusNode,
        controller: otpController,
        autofocus: true,
        obscureText: true,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
            focusedBorder: otpStyle(), enabledBorder: otpStyle()),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:new_to_edit/views/styles/colors.dart';

class DefaultButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? buttonText;
  DefaultButton({this.buttonText, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 56,
        width: double.infinity,
        child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(kPrimaryColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))))),
          onPressed: onPressed,
          child: Text(buttonText!),
        ));
  }
}

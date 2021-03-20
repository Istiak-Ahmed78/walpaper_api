import 'package:flutter/material.dart';
import 'package:new_to_edit/views/screens/sign_up/verifivation_page/components/single_otp.dart';
import 'package:new_to_edit/views/styles/colors.dart';

class OTPPage extends StatefulWidget {
  @override
  _OTPPageState createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
  TextEditingController otp1 = TextEditingController();
  TextEditingController otp2 = TextEditingController();
  TextEditingController otp3 = TextEditingController();
  TextEditingController otp4 = TextEditingController();

  FocusNode focusNode1 = FocusNode();

  FocusNode focusNode2 = FocusNode();

  FocusNode focusNode3 = FocusNode();
  FocusNode focusNode4 = FocusNode();
  void goToNextField(String value, FocusNode focusNod) {
    if (value.length == 1) {
      focusNod.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SingleOTP(
          otpController: otp1,
          focusNode: focusNode1,
          onChanged: (value) {
            goToNextField(value, focusNode2);
          },
        ),
        SingleOTP(
            otpController: otp2,
            focusNode: focusNode2,
            onChanged: (value) {
              goToNextField(value, focusNode3);
            }),
        SingleOTP(
            otpController: otp3,
            focusNode: focusNode3,
            onChanged: (value) {
              goToNextField(value, focusNode4);
            }),
        SingleOTP(
          otpController: otp4,
          focusNode: focusNode4,
        ),
      ],
    );
  }
}

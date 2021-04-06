import 'package:flutter/material.dart';
import 'package:new_to_edit/views/sharerd_widgets/shared_widgets.dart';
import 'package:new_to_edit/views/styles/styles.dart';
import 'components/otp_form.dart';

class VerificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, 'OTP Verification'),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: screenHeight(context) * 0.07,
              ),
              Text(
                'OTP Verification',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  height: 1.5,
                ),
              ),
              Text('We sent an OTP code to your +01302143101'),
              timeOur(),
              Spacer(),
              OTPPage(),
              Spacer(),
              DefaultButton(
                buttonText: 'Continue',
                onPressed: () {},
              ),
              Spacer(),
              Text(
                'Resend OTP Code',
                style: TextStyle(),
              ),
              SizedBox(
                height: screenHeight(context) * 0.04,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

timeOur() => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('This code will expired in '),
        TweenAnimationBuilder(
            tween: Tween(begin: 30.0, end: 0.0),
            duration: Duration(seconds: 30),
            builder: (_, double value, child) => Text(
                  '00:${value.toInt().toString()}',
                  style: TextStyle(color: kPrimaryColor),
                ))
      ],
    );

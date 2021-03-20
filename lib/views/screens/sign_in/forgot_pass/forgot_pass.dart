import 'package:flutter/material.dart';
import 'package:new_to_edit/views/screens/sign_up/register_app/components/text_field.dart';
import 'package:new_to_edit/views/sharerd_widgets/shared_widgets.dart';
import 'package:new_to_edit/views/styles/styles.dart';
import '';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, 'Forgot Password'),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: screenHeight(context) * 0.07,
              ),
              Text(
                'Forgot Password',
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 27,
                ),
              ),
              SizedBox(
                height: screenHeight(context) * 0.02,
              ),
              Text(
                "Please enter your email and we will send \nyou a link to return to your account",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: screenHeight(context) * 0.12,
              ),
              EveryTextField(
                hintText: 'Email',
                helperText: 'Enter your email',
                textEditingController: emailController,
                preFix: 'images/Mail.svg',
              ),
              Spacer(),
              DefaultButton(
                buttonText: 'Continue',
                onPressed: () {},
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have an account?'),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          color: kPrimaryColor, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: screenHeight(context) * 0.04,
              )
            ],
          ),
        ),
      ),
    );
  }
}

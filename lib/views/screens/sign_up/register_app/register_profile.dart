import 'package:flutter/material.dart';
import 'package:new_to_edit/views/sharerd_widgets/share_icon.dart';
import 'package:new_to_edit/views/sharerd_widgets/shared_widgets.dart';
import 'package:new_to_edit/views/styles/styles.dart';
import 'components/text_field.dart';

class ResisterAccount extends StatefulWidget {
  @override
  _ResisterAccountState createState() => _ResisterAccountState();
}

class _ResisterAccountState extends State<ResisterAccount> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();
  double screenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;
  double screenWight(BuildContext context) => MediaQuery.of(context).size.width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: kWhiteColor,
        title: Text(
          'Sign Up',
          style: TextStyle(color: kSecondaryColor),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: kBlack,
          ),
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: screenHeight(context) * 0.045,
                ),
                Text(
                  'Resister Account',
                  style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 27),
                ),
                SizedBox(
                  height: screenHeight(context) * 0.004,
                ),
                Text(
                  'Complete your details or continue \nwith social media',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: kSecondaryColor),
                ),
                SizedBox(
                  height: screenHeight(context) * 0.045,
                ),
                EveryTextField(
                  textEditingController: emailController,
                  hintText: 'Email',
                  helperText: 'Enter your email',
                  preFix: 'images/Mail.svg',
                ),
                SizedBox(
                  height: screenHeight(context) * 0.025,
                ),
                EveryTextField(
                  textEditingController: passwordController,
                  hintText: 'Password',
                  helperText: 'Enter your password',
                  preFix: 'images/Lock.svg',
                ),
                SizedBox(
                  height: screenHeight(context) * 0.025,
                ),
                EveryTextField(
                  textEditingController: passwordController,
                  hintText: 'Confirm Password',
                  helperText: 'Re-enter your password',
                  preFix: 'images/Lock.svg',
                ),
                SizedBox(
                  height: screenHeight(context) * 0.055,
                ),
                DefaultButton(
                  buttonText: 'Continue',
                  onPressed: () {},
                ),
                SizedBox(
                  height: screenHeight(context) * 0.065,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ShareIcon(
                      shareIcon: 'images/icons/google-icon.svg',
                    ),
                    ShareIcon(
                      shareIcon: 'images/icons/facebook-2.svg',
                    ),
                    ShareIcon(
                      shareIcon: 'images/icons/twitter.svg',
                    )
                  ],
                ),
                SizedBox(
                  height: screenHeight(context) * 0.016,
                ),
                Text(
                  'By continuing your confirm that you agree \nwith our Term and Condition',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: kSecondaryColor),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

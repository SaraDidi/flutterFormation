import 'package:flutter/material.dart';
import 'package:hellow_word/config.dart';
import 'package:hellow_word/widget/my_button.dart';
import 'package:hellow_word/widget/my_text_filed.dart';

import '../app_constants.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: AppBar().preferredSize.height * 2),
            Align(
              alignment: AlignmentDirectional.topStart,
              child: Image.asset(
                AppConstants.appLogo,
                width: fullWidth(context) * 0.22,
              ),
            ),
            SizedBox(height: fullHeight(context) * 0.06),
            const Text(
              'Create Account',
              style: TextStyle(
                color: Colors.pink,
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text("Enter your details for a new account"),
            SizedBox(height: fullHeight(context) * 0.04),
            MyTextFiled(hint: 'Full name'),
            SizedBox(height: fullHeight(context) * 0.02),
            MyTextFiled(hint: 'Enter Email Address'),
            SizedBox(height: fullHeight(context) * 0.02),
            MyTextFiled(hint: 'Password', hasIcon: true),
            SizedBox(height: fullHeight(context) * 0.01),
            const Row(
               children: [
                
                 Text("I accept the Terms of Service & Privacy Policy"),
               ],
             ),
            SizedBox(height: fullHeight(context) * 0.04),
            MyButton(onPressed: () {}, title: 'Create Account'),
            SizedBox(height: fullHeight(context) * 0.03),
            Center(
              child: RichText(
                text: const TextSpan(
                  text: "Already have an account? ",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w500),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Login Here',
                        style: TextStyle(
                            color: AppConstants.secondColor, fontWeight: FontWeight.w500)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'config.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  
  Widget _socialMedia(IconData icon, Color backgroundColor) {
    return Container(
      width: fullWidth(context) * 0.15,
      height: fullWidth(context) * 0.15,
      decoration: BoxDecoration(shape: BoxShape.circle, color: backgroundColor),
      child: Icon(icon, color: Colors.white),
    );
  }

  Widget inputTextField(String hint, bool hasIcon) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle:
            const TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.withOpacity(0.5)),
        ),
        suffixIcon: hasIcon ? const Icon(Icons.visibility_off) : null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: fullWidth(context) * 0.05),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
          Image.asset("assets/images/logo.png" , 
          height: fullHeight(context)* 0.12),
          SizedBox(height: fullHeight(context) * 0.04),
          Text(
            "Loing In Now",
            style: TextStyle(
                fontSize: fontSize10(context) * 1.7,
                fontWeight: FontWeight.w800),
          ),
          SizedBox(height: fullHeight(context) * 0.01),
          Text(
            "Please loging to continune using app",
            style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w500,
                fontSize: fontSize10(context)),
          ),
          SizedBox(height: fullHeight(context) * 0.05),
          inputTextField("Email", false),
          SizedBox(height: fullHeight(context) * 0.03),
          inputTextField("Password", true),
          SizedBox(height: fullHeight(context) * 0.02),
          const Align(
            alignment: AlignmentDirectional.topEnd,
            child: Text(
              "Forget password ?",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: fullHeight(context) * 0.05),
          SizedBox(
            width: fullWidth(context) * 0.9,
            height: fullHeight(context) * 0.06,
            child: ElevatedButton(
                onPressed: () => print("hello"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                ),
                child: Text(
                  "Log In",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: fontSize10(context) * 1.2),
                )),
          ),
          SizedBox(height: fullHeight(context) * 0.03),
          RichText(
            text: const TextSpan(
              text: "Don't have an account? ",
              style:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
              children: <TextSpan>[
                TextSpan(
                    text: 'Sign Up',
                    style: TextStyle(
                        color: Colors.pink, fontWeight: FontWeight.w500)),
              ],
            ),
          ),
          SizedBox(height: fullHeight(context) * 0.03),
          const Text(
            "Or connect with",
            style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey),
          ),
          SizedBox(height: fullHeight(context) * 0.06),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: fullWidth(context) * 0.2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _socialMedia(FontAwesomeIcons.facebookF, Colors.lightBlue[900]!),
                _socialMedia(FontAwesomeIcons.twitter, Colors.blue),
                _socialMedia(FontAwesomeIcons.googlePlusG, Colors.red),
              ],
            ),
          )
        ]),
      ),
    );
  }
}

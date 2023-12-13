import 'package:flutter/material.dart';
import 'package:hellow_word/app_constants.dart';

import '../config.dart';

class MyButton extends StatefulWidget {
  Function()? onPressed;
  String? title;
  Color color;
  Color textColor;
  MyButton({
    super.key,
    this.onPressed,
    this.title,
    this.color = AppConstants.primaryColor,
    this.textColor = Colors.white,
  });

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: fullWidth(context) * 0.9,
      height: fullHeight(context) * 0.06,
      child: ElevatedButton(
          onPressed: widget.onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: widget.color,
              elevation: 3,
              foregroundColor: widget.textColor,
              textStyle: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: fontSize10(context) * 1.2)),
          child: Text(
            widget.title!,
          )),
    );
  }
}

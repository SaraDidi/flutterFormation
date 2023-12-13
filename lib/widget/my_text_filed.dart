import 'package:flutter/material.dart';

class MyTextFiled extends StatefulWidget {
 final String? hint;
  final bool hasIcon;
  const MyTextFiled({super.key , this.hint, this.hasIcon = false});

  @override
  State<MyTextFiled> createState() => _MyTextFiledState();
}

class _MyTextFiledState extends State<MyTextFiled> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: widget.hint,
        hintStyle:const TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
        border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(32.0))),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.withOpacity(0.5)),
        ),
        suffixIcon: widget.hasIcon ? const Icon(Icons.visibility_off) : null,
      ),
    );
  }
}

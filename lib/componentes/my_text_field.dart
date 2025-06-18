import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hint;
  final bool obscureText;
  final controller;
  const MyTextField({
    super.key,
    required this.hint,
    required this.obscureText,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hint,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 39, 106, 194)),
          ),
          fillColor: Colors.cyan,
          filled: true,
        ),
      ),
    );
  }
}

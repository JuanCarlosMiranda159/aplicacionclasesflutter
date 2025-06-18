import 'package:flutter/material.dart';

class MyButtom extends StatelessWidget {
  final Function()? ontap;
  final String text;

  const MyButtom({super.key, this.ontap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(20),

        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 30,
              color: const Color.fromARGB(255, 145, 120, 11),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

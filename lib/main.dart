import 'package:flutter/material.dart';
import 'package:flutter_application_2/pantallas/loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: "sesion 7", home: Loginpage());
  }
}

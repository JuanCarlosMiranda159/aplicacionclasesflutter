import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 240, 236),
      appBar: AppBar(title: Text("ABC.com"), backgroundColor: Colors.amber),

      body: Center(child: Text("Home", style: TextStyle(fontSize: 30))),
    );
  }
}
///1.53M
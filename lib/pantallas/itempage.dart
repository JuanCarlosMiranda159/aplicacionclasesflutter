import 'package:flutter/material.dart';

class Itempage extends StatelessWidget {
  const Itempage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 240, 236),
      appBar: AppBar(title: Text("item"), backgroundColor: Colors.amber),
      body: Center(child: Text("item", style: TextStyle(fontSize: 30))),
    );
  }
}

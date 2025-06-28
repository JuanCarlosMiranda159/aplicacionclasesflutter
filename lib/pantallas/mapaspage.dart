import 'package:flutter/material.dart';

class Mapaspage extends StatelessWidget {
  const Mapaspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 240, 236),
      appBar: AppBar(title: Text("maps"), backgroundColor: Colors.blue),
      body: Center(child: Text("mapsss", style: TextStyle(fontSize: 30))),
    );
  }
}

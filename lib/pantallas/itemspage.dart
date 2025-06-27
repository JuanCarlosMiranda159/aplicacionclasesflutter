import 'package:flutter/material.dart';

class Itemspage extends StatefulWidget {
  const Itemspage({super.key});

  @override
  State<Itemspage> createState() => _ItemspageState();
}

class _ItemspageState extends State<Itemspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 240, 236),
      appBar: AppBar(title: Text("items"), backgroundColor: Colors.blue),
      body: Padding(
        padding: EdgeInsetsGeometry.all(20),
        child: ListView(
          children: [
            Text("item 1", style: TextStyle(fontSize: 30)),
            Text("item 2", style: TextStyle(fontSize: 30)),
            Text("item 3", style: TextStyle(fontSize: 30)),
            Text("item 4", style: TextStyle(fontSize: 30)),
            Text("item 5", style: TextStyle(fontSize: 30)),
          ],
        ),
      ),
    );
  }
}

//28:11 16:06:25

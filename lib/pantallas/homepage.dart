import 'package:flutter/material.dart';
import 'package:flutter_application_2/pantallas/itempage.dart';
import 'package:flutter_application_2/pantallas/itemspage.dart';
import 'package:flutter_application_2/pantallas/mapaspage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 240, 236),
      appBar: AppBar(title: Text("ABC.com"), backgroundColor: Colors.amber),

      body: Center(child: Text("joseputa", style: TextStyle(fontSize: 30))),

      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 66, 163, 107),
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 169, 177, 167),
              ),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("lib/images/user2.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                accountName: Text(
                  "Jose",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(188, 34, 31, 5),
                  ),
                ),
                accountEmail: Text(
                  "Jose543@gmail.com",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(122, 20, 19, 4),
                  ),
                ),
                currentAccountPictureSize: Size.square(40),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 183, 184, 219),
                  child: Text(
                    "J",
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  ),
                ),
              ),
            ),

            ListTile(
              leading: Icon(Icons.person),
              title: Text("Perfil"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.list),
              title: Text("Items"),
              onTap: gotoitems,
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text("Maps"),
              onTap: gotomaps,
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("settings"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  void gotoitems() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Itemspage()),
    );
  }

  void gotomaps() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Mapaspage()),
    );
  }
}

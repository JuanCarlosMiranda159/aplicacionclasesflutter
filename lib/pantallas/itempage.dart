import 'package:flutter/material.dart';

class Itempage extends StatelessWidget {
  final String titulo;
  const Itempage({super.key, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 240, 236),
      appBar: AppBar(title: Text(titulo), backgroundColor: Colors.amber),
      body: Column(
        children: [
          //imagen
          SizedBox(height: 20),
          CircleAvatar(
            backgroundImage: NetworkImage(
              "https://www.certus.edu.pe/wp-content/uploads/2019/01/SEDE-PRINCIPAL_400.png",
            ),
            radius: 100,
          ),
          //titulo
          SizedBox(height: 10),
          Center(
            child: Text(
              titulo,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
            ),
          ),
          SizedBox(height: 10),
          //texto
          Text(
            "Certus, originalmente conocido como Instituto de Formación Bancaria (IFB), fue fundado el 24 de agosto de 1995. Se destaca por ser un instituto tecnológico privado líder en carreras de negocios y ahora también en tecnologías de la información. Certus se ha posicionado como una opción preferida por los jóvenes estudiantes, ofreciendo carreras con alta empleabilidad y un enfoque en el éxito profesional de sus estudiantes. ",
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          ),
          //bottom
          SizedBox(
            width: 200,
            height: 80,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
              ),

              onPressed: () {},
              child: Center(
                child: Row(
                  children: [
                    Icon(Icons.star),
                    SizedBox(width: 20),
                    Text("Contactenos", style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
//1:34.44    16/6/25
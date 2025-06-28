import 'package:flutter/material.dart';
import 'package:flutter_application_2/pantallas/itempage.dart';

class Itemspage extends StatefulWidget {
  const Itemspage({super.key});
  @override
  State<Itemspage> createState() => _ItemspageState();
}

class _ItemspageState extends State<Itemspage> {
  final titulos = ["Administracion", "Contabilidad", "Finanzas"];
  final subtitulos = [
    "Carrera profesional de Administracion bancaria",
    "Carrera profesional de Contabilidad de empresas",
    "Carrera profesional de Finanzas Corporativas",
  ];
  final imagenes = [
    "https://www.certus.edu.pe/blog/wp-content/uploads/2016/09/blog_cover_certus-768x402.png",
    "https://www.certus.edu.pe/blog/wp-content/uploads/2016/09/blog_cover_certus-768x402.png",
    "https://www.certus.edu.pe/blog/wp-content/uploads/2016/09/blog_cover_certus-768x402.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 240, 236),
      appBar: AppBar(title: Text("Carreras"), backgroundColor: Colors.blue),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: titulos.length, // Ahora sí puedes usarlo directamente
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {
                  goDetails(titulos[index]);
                },
                title: Text(titulos[index]),
                subtitle: Text(subtitulos[index]),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(imagenes[index]),
                ),
                trailing: Icon(Icons.star),
              ),
            );
          },
        ),
      ),
    );
  }

  void goDetails(String titulo) {
    print("go details");
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Itempage(titulo: titulo)),
    );
  }
}

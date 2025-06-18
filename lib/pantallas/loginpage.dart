import 'package:flutter/material.dart';
import 'package:flutter_application_2/componentes/my_buttom.dart';
import 'package:flutter_application_2/componentes/my_text_field.dart';
import 'package:flutter_application_2/pantallas/homepage.dart';
import 'package:flutter_application_2/pantallas/registerpage.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final emailController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 240, 236),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              //logo
              SizedBox(height: 30),
              Icon(
                Icons.lock,
                size: 100,
                color: Color.fromARGB(255, 173, 24, 24),
              ),
              Text(
                "ABC.com",
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 104, 102, 90),
                  fontWeight: FontWeight.bold,
                ),
              ),

              //textfield usuario
              MyTextField(
                hint: "Email",
                obscureText: false,
                controller: emailController,
              ),

              //texfield contaseña
              MyTextField(
                hint: "password",
                obscureText: true,
                controller: passController,
              ),
              //buttom validacion
              MyButtom(ontap: login, text: "login"),
              //registro
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.all(10),
                child: Divider(thickness: 5, color: Colors.amber),
              ),
              GestureDetector(
                onTap: registrado,
                child: Text(
                  "register",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void registrado() {
    print("registeer");

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Registro()),
    );
  }

  void login() {
    print("pressed");
    String email = emailController.text.toString();
    String password = passController.text.toString();
    print("email:$email");
    print("password:$password");
    if (email == "admin" && password == "1234") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Homepage()),
      );
    } else {
      showAlert(context, "invalid credencial");
    }
  }

  void showAlert(BuildContext, String text) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(content: Text(text)),
    );
  }

  ///1:41M
}

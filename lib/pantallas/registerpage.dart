import 'package:flutter/material.dart';
import 'package:flutter_application_2/componentes/my_buttom.dart';
import 'package:flutter_application_2/componentes/my_text_field.dart';
import 'package:flutter_application_2/pantallas/homepage.dart';

class Registro extends StatefulWidget {
  const Registro({super.key});

  @override
  State<Registro> createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  final nickController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final cityController = TextEditingController();
  final genderController = TextEditingController();

  final password1Controller = TextEditingController();
  final password2Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 237, 240, 236),
      appBar: AppBar(title: Text("Register"), backgroundColor: Colors.amber),

      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                //logo
                SizedBox(height: 30),

                //textfield usuario
                MyTextField(
                  hint: "Nick",
                  obscureText: false,
                  controller: nickController,
                ),
                MyTextField(
                  hint: "Email",
                  obscureText: false,
                  controller: emailController,
                ),
                MyTextField(
                  hint: "Phone",
                  obscureText: false,
                  controller: phoneController,
                ),
                MyTextField(
                  hint: "City",
                  obscureText: false,
                  controller: cityController,
                ),
                MyTextField(
                  hint: "Gender",
                  obscureText: false,
                  controller: genderController,
                ),

                //texfield contaseña
                MyTextField(
                  hint: "password",
                  obscureText: true,
                  controller: password1Controller,
                ),
                MyTextField(
                  hint: "repettt password",
                  obscureText: true,
                  controller: password2Controller,
                ),
                //buttom validacion
                MyButtom(ontap: register, text: "Register"),

                //registro
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void register() {
    print("Register");
    String nick = nickController.text.toString();
    String email = emailController.text.toString();
    String phone = phoneController.text.toString();
    String city = cityController.text.toString();
    String gender = genderController.text.toString();
    String password1 = password1Controller.text.toString();
    String password2 = password2Controller.text.toString();

    if (password1 == password2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Homepage()),
      );
    } else {
      showAlert(context, "password doesnt match");
    }
  }

  void showAlert(BuildContext, String text) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(content: Text(text)),
    );
  }
}

import 'dart:js';

import 'package:flutter/material.dart'; // import tahap 1
import 'package:another_flushbar/flushbar.dart'; // import tahap 2
import 'package:flutter_form_builder/flutter_form_builder.dart'; // import tahap 2
import 'package:vigenesia/Screens/Login.dart'; // import tahap 1

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController nameController = TextEditingController(); //tahap 2
  TextEditingController profesiController = TextEditingController(); //tahap 3
  TextEditingController emailController = TextEditingController(); // tahap 4
  TextEditingController passwordController = TextEditingController(); //tahap 5
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // awaal scaffold
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width / 1.3,
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // pembuka children tahap 1
                  Text(
                    "Register Your Account",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ), // akhir tahap 1
                  SizedBox(height: 50),
                  FormBuilderTextField(
                    name: "name",
                    controller: nameController,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 10),
                        border: OutlineInputBorder(),
                        labelText: "Nama"),
                  ),
                  SizedBox(height: 20),

                  FormBuilderTextField(
                    name: "profesi",
                    controller: profesiController,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 10),
                        border: OutlineInputBorder(),
                        labelText: "Profesi Anda"),
                  ), //akhir tahap 3
                  //awal tahap 4
                  SizedBox(height: 20),
                  FormBuilderTextField(
                    name: "email",
                    controller: emailController,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 10),
                        border: OutlineInputBorder(),
                        labelText: "Email"),
                  ), //akhir tahap 4
                  //awal tahap5
                  SizedBox(
                    height: 20,
                  ),
                  FormBuilderTextField(
                    obscureText:
                        true, // <-- Buat bikin setiap inputan jadi bintang " * "
                    name: "password",
                    controller: passwordController,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 10),
                        border: OutlineInputBorder(),
                        labelText: "Password"),
                  ), //akhir tahap 5
                  // awal tahap 6
                  SizedBox(height: 30),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Text("Register"),
                    ),
                  ),
                  //akhir tahap 6
                ], // penutup childer tahap 1
              ),
            ),
          ),
        ),
      ),
    ); // akhir scaffold
  }
}

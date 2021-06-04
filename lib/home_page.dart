import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

import 'app_controller.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  String email = "";
  String senha = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("pagina de login"),
          ),
          body: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("seja bem vindo a nossa pagina de login"),
                  Container(
                    height: 10,
                  ),
                  TextField(
                      onChanged: (text) {
                        email = text;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: "escreva seu email",
                          border: OutlineInputBorder())),
                  Container(
                    height: 10,
                  ),
                  TextField(
                      onChanged: (text) {
                        senha = text;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "escreva sua senha",
                          border: OutlineInputBorder())),
                  Container(height: 15),
                  ElevatedButton(
                    onPressed: () {
                      if (email == "yanlol851@gmail.com" &&
                          senha == "yanlol851") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AppController()),
                        );
                      }
                    },
                    child: Text("entrar"),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

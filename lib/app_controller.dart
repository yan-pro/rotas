import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("home page"),
        ),
        body: Center(
          child: Text("bem vindo de volta senhor"),
        ),
      ),
    );
  }
}

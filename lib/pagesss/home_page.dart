import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {

  int days=30;
 String name= "codepur";


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text("catalog app"),
      ),

    body: Center(
      child: Container(
        child: Text("Welcome to $days days of of flutter by $name"),
      ),
    ),

    drawer: Drawer(),
    );
  }
}
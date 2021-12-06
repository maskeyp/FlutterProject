import 'package:flutter/material.dart';
import 'package:learning_flutter/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  int days = 30;
  String name = "Maskey";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to Ekrishi"),
      ),
        
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of flutter by $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}

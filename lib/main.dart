import 'package:flutter/material.dart';
import 'package:learning_flutter/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    

    
    const pi = 3.14; //unchanged value
   

    return MaterialApp(
        home: HomePage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_project/loginpage.dart';
import 'package:flutter_project/register%20here.dart';

void main(){
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: LoginPage(),
    );







  }
}



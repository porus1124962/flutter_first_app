import 'package:flutter/material.dart';
import 'package:flutter_first_app/pages/login.dart';
import 'pages/home_page.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
          brightness: Brightness.dark),

      routes: {
        "/":(context) => LoginPage(),
        "/home":(context) => HomePage(),
      },
    );
  }
}
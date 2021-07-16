import 'package:flutter/material.dart';
import 'package:flutter_first_app/pages/detail_page.dart';
import 'package:flutter_first_app/pages/login.dart';
import 'package:flutter_first_app/widget/theme.dart';
import 'models/catalog.dart';
import 'pages/home_page.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{



  Widget build(BuildContext context){
    return MaterialApp(
      theme: MyTheme.lightTheme(context),
      themeMode: ThemeMode.light,
      darkTheme: MyTheme.darkTheme(context),

      routes: {
        "/":(context) => LoginPage(),
        "/home":(context) => HomePage(),
        // "/detail":(context) => detailView(catalog:catalogAsync()),
      },
    );
  }
}
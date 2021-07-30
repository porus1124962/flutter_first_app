import 'package:flutter/material.dart';
import 'package:flutter_first_app/pages/cart.dart';
import 'package:flutter_first_app/pages/detail_page.dart';
import 'package:flutter_first_app/pages/login.dart';
import 'package:flutter_first_app/pages/routes.dart';
import 'package:flutter_first_app/widget/theme.dart';
import 'models/catalog.dart';
import 'pages/home_page.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{



  Widget build(BuildContext context){
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),

      routes: {
        "/":(context) => LoginPage(),
        MyRoutes.homeRoute:(context) => HomePage(),
        MyRoutes.cartRoute:(context) => AddToCart(),
        // "/detail":(context) => detailView(catalog:catalogAsync()),
      },
    );
  }
}
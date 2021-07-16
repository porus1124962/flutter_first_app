import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context)=> ThemeData(
    primarySwatch: Colors.teal,
    appBarTheme: AppBarTheme(
      color: Colors.white,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.black),
     centerTitle: true,
      textTheme:Theme.of(context).textTheme,
    )
  );
  static ThemeData darkTheme(BuildContext context)=> ThemeData(
      brightness: Brightness.dark
  );


}
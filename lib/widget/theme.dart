import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context)=> ThemeData(



    appBarTheme: AppBarTheme(
      color: Vx.hexToColor("#042b3d"),
      elevation: 0.0,
      iconTheme: IconThemeData(color:Colors.white),
      centerTitle: true,
      titleTextStyle: TextStyle(color:Colors.white),
    ),
    //primarySwatch: Colors.teal,
    //buttonColor:Vx.hexToColor("#0b131c"),
    //fontFamily: GoogleFonts.poppins().fontFamily,
    brightness: Brightness.light,
    canvasColor: Colors.white,
    accentColor: Colors.black,
    scaffoldBackgroundColor: Colors.white,
    cardColor: Colors.white,
    primaryColor: Vx.hexToColor("#042b3d"),

  );

  static ThemeData darkTheme(BuildContext context)=> ThemeData(
    appBarTheme: AppBarTheme(
      brightness: Brightness.dark,
      color: Colors.teal,
      elevation: 0.0,
      iconTheme: IconThemeData(color:  Colors.white),
      centerTitle: true,
      titleTextStyle: TextStyle(color:Colors.white),
    ),
    //buttonColor:Vx.hexToColor("#000000"),
    //fontFamily: GoogleFonts.poppins().fontFamily,
    //scaffoldBackgroundColor: Vx.hexToColor("#0b131c"),
     
    canvasColor: Colors.black,
    accentColor: Colors.white,
    scaffoldBackgroundColor: Vx.hexToColor("#0b131c"),
    cardColor: Vx.hexToColor("#000000"),
    primaryColor: Colors.teal,
    //cardColor: Vx.hexToColor("#000000"),
  );

}
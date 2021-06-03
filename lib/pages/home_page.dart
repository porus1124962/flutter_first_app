import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(
        title: Text("Gallary"),
      ),
      body: Center(
        child: Container(
          color: Colors.white,

          child: Center(
            child: Column(
              children: [

                Center(
                  child: Text(
                    "Welcom Home Page",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),




              ],
            ),
          ),
        ),
      ),

    );
  }
}
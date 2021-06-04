import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
        title: Text("Gallary"),
        ),
      body: HomePageBack(),
    );
  }
}


class HomePageBack extends StatefulWidget {

  @override
  _HomePageBackState createState() => _HomePageBackState();
}

class _HomePageBackState extends State<HomePageBack> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.white,
      child: Center(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}

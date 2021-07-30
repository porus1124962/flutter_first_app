import 'package:flutter/material.dart';
import 'package:flutter_first_app/pages/detail_page.dart';
import 'package:flutter_first_app/pages/login.dart';
import 'package:flutter_first_app/widget/theme.dart';
class AddToCart extends StatelessWidget {

  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Gallary",style: TextStyle(color: Colors.black)),
        ),
        body: AddToCartStlf(),
      ),
    );
  }
}
class AddToCartStlf extends StatefulWidget {
  @override
  _AddToCartStlfState createState() => _AddToCartStlfState();
}

class _AddToCartStlfState extends State<AddToCartStlf> {
  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}

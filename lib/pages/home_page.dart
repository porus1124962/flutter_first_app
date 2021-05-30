import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Gallary"),
      ),
      body: Container(


        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children:<Widget>[
                 Row(
                  children: [
                    Column(
                      children:[
                        Image.asset('assets/images/g1.jpg',
                          height: 100,width: 100,)
                      ],
                    ),
                    Column(
                      children:[
                        Image.asset('assets/images/g2.jpg' ,
                          height: 100,width: 100,)
                      ],
                    ),

                    Column(
                      children:[
                        Image.asset('assets/images/g3.jpg' ,
                          height: 100,width: 100,)
                      ],
                    )
                  ],
                ),
                Row(

                  children: [
                    Column(
                      children:[
                        Image.asset('assets/images/g1.jpg',
                          height: 200,width: 100,)
                      ],
                    ),
                    Column(
                      children:[
                        Image.asset('assets/images/g2.jpg' ,
                          height: 200,width: 100,)
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),

      ),
    );
  }
}
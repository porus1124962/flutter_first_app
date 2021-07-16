import 'package:flutter/material.dart';
import 'package:flutter_first_app/models/catalog.dart';


class detailView extends StatelessWidget {
  final Item catalog;

  const detailView({Key? key, required this.catalog}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text("Gallary",style: TextStyle(color: Colors.black)),
          ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                // color: Colors.black87,
                height: 250,
                padding:EdgeInsets.fromLTRB(0, 15, 0, 15),
                child: Hero(
                  tag: Key(catalog.id.toString()),
                    child: Center(child: Image.network(catalog.image))),
              ),
              SizedBox(
                height: 8,
              ),
              Column(
                children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(
                      child: Text(" Model  :",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )),
                    ),

                    Center(
                      child: Text(catalog.name,style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(
                      child: Text("Color :",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )),
                    ),
                    Center(
                      child: Text(catalog.color,style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      )),
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Text("Description : ",style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )),
                    Flexible(child: Text(catalog.desc + catalog.desc,style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),)),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.all(20),
                      height: 50,
                      width: 100,
                      child: Text(
                        catalog.price.toString()+"\$",style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal
                      ),
                      ),
                    ),
                  ],
                )
              ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    height: 50,
                    width: 200,
                    child: Center(
                      child: Text(
                           "Add To Cart",style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.teal
                        ),
                        ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.teal,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
    ));
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_first_app/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_first_app/main.dart';
class detailView extends StatelessWidget {
  final Item catalog;

  const detailView({Key? key, required this.catalog}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
        child: Scaffold(
          backgroundColor:Theme.of(context).primaryColor,
          bottomNavigationBar: Container(
            color: Theme.of(context).canvasColor,
            child: ButtonBar(

              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding:  EdgeInsets.fromLTRB(0, 0, 10, 0),
              children: [
                Text(catalog.price.toString()+"\$",style: TextStyle(
                  fontSize: 16.0,
                  color:  Theme.of(context).accentColor,
                  fontWeight: FontWeight.bold,
                ),),

                ElevatedButton(onPressed: ()=> Navigator.pushNamed(context, '/cartRoute'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor),
                        shape: MaterialStateProperty.all(StadiumBorder())
                    ),
                    child: Text("Add to Cart",style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                    ),))
              ],
            ),
          ),
          appBar: AppBar(
            title: Text("Catloge"),
            iconTheme: AppBarTheme.of(context).iconTheme
          ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                // color: Colors.black87,
                height: 300,
                padding:EdgeInsets.fromLTRB(0, 15, 0, 15),
                child: Hero(
                  tag: Key(catalog.id.toString()),
                    child: Center(child: Image.network(catalog.image))),
              ),
              VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  color:  Theme.of(context).canvasColor,
                  width: context.screenWidth,
                  height: context.screenHeight,
                  padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: Column(
                    children: [
                      Text(catalog.name,style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                        color: Theme.of(context).accentColor,
                      ),),
                      Text(catalog.desc,style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).accentColor,
                      ),),
                    ],
                  ).p16(),
                ),
              )
            ],
          ),
        ),
    ));
  }
}


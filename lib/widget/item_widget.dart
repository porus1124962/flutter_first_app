import 'package:flutter/material.dart';
import 'package:flutter_first_app/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_first_app/widget/theme.dart';


class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      child: Card(
        //shadowColor: Colors.white,
          // child: ListTile(
          //   leading: Container(child: Image.network(item.image)),
          //   title: Text(item.name),
          //   subtitle: Text(item.desc),
          //   trailing: Text(item.price.toString(),
          //   textScaleFactor: 1.5,
          //   style: TextStyle(
          //     fontWeight: FontWeight.bold,
          //     color: Colors.teal
          //   )),
          // )
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        elevation: 5,
        margin: EdgeInsets.all(10),
          child: Row(
            children: [


              //image item widget start
              Container(
                child: Hero(
                  tag: Key(item.id.toString()),
                    child: Image.network(item.image,width: 100,fit: BoxFit.contain)),
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),)
              ),
              //image item widget end


              Container(
                child: Expanded(
                  child: Column(
                    children: [
                      SizedBox(height: 20),

                      //card Text start
                      Text(item.name,style: TextStyle(
                        fontSize: 16.0,
                        color: context.theme.accentColor,
                        fontWeight: FontWeight.bold,
                       ),
                      ),
                      SizedBox(height: 5),
                      Text(item.desc,style: TextStyle(
                        fontSize: 13.3,
                        color:  context.theme.accentColor,
                       ),
                      ),
                      //card Text end

                      Expanded(
                        child: ButtonBar(
                          alignment: MainAxisAlignment.spaceBetween,
                          buttonPadding:  EdgeInsets.fromLTRB(0, 0, 10, 0),
                          children: [
                            Text(item.price.toString()+"\$",style: TextStyle(
                              fontSize: 16.0,
                              color:  context.theme.accentColor,
                              fontWeight: FontWeight.bold,
                            ),),

                            ElevatedButton(onPressed: (){},
                                style: ButtonStyle(
                                 backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor),
                                  shape: MaterialStateProperty.all(StadiumBorder())
                                ),
                                child: Text("Buy",style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.white,
                                ),))
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
      ),
    );
  }
}

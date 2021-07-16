import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_first_app/models/catalog.dart';
import 'package:flutter_first_app/pages/detail_page.dart';
import 'package:flutter_first_app/widget/item_widget.dart';

class HomePage extends StatelessWidget{
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Gallary",style: TextStyle(color: Colors.black)),
          ),
        body: HomePageBack(),
      ),
    );
  }
}


class HomePageBack extends StatefulWidget {

  @override
  _HomePageBackState createState() => _HomePageBackState();
}

class _HomePageBackState extends State<HomePageBack> {
  @override
  void initState(){
    super.initState();
    loadData();
  }
  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    var catalogJson = await rootBundle.loadString("assets/files/catlogData.json");
    var decodeData = jsonDecode(catalogJson);
    var productsData = decodeData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {

    });
  }

  Widget build(BuildContext context) {
    return  Container(
      color: Colors.white,
      child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
        ? ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder:(context, index) {
            final catalog = CatalogModel.items[index];
            return InkWell(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>detailView(catalog:catalog))),
              child: ItemWidget(
                item:catalog,
              ),
            );
          }
      )
      :Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

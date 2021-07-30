import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_first_app/models/catalog.dart';
import 'package:flutter_first_app/pages/detail_page.dart';
import 'package:flutter_first_app/pages/routes.dart';
import 'package:flutter_first_app/widget/item_widget.dart';
import 'package:velocity_x/velocity_x.dart';


class HomePage extends StatelessWidget{
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add_shopping_cart),
          onPressed: () =>Navigator.pushNamed(context, MyRoutes.cartRoute) ,
        ),
        bottomNavigationBar: BottomAppBar(
          notchMargin: 5,
          shape: CircularNotchedRectangle(),
          color: Colors.white,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            backgroundColor: Colors.transparent,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home"
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.wallet_membership),
                label: "Wallet",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.collections),
                label: "Collection",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
              ),
            ],
          ),
        ),


        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,



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
    return  Column(
      children: [
        Container(
          padding: EdgeInsets.all(20),
          color: Colors.white,
          width: context.screenWidth,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Catalog App",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
              color: Colors.black,
              ),),
              Text("Trending Product Here!",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: Colors.black,
              ),)
            ],
          ),
        ),
        Expanded(
          child: Container(
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
          ),
        ),
      ],
    );
  }
}

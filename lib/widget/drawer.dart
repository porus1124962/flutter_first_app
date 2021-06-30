import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountEmail: Text("Shafqat"),
                accountName: Text("shafqat.arain@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/login_image.png"),
                ),
              )
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.teal),
            title: Text(
              "Home",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.teal,
              ),
            ),
          ),
          //2nd drawer btn
          ListTile(
            leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.teal),
            title: Text(
              "Profile",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.teal,
              ),
            ),
          ),


          //3rd drawer btn
          ListTile(
            leading: Icon(
                CupertinoIcons.settings,
                color: Colors.teal),
            title: Text(
              "Setting",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.teal,
              ),
            ),
          ),
        ],
      ),

    );
  }
}

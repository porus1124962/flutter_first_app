import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_first_app/pages/home_page.dart';
import 'package:flutter_first_app/widget/drawer.dart';


class LoginPage extends StatefulWidget{
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(
        title: Text("Gallary",style: TextStyle(color: Colors.black)),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(

            children: [
              Container(
                width:500,
                height: 250.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/teal.jpg"),
                        fit: BoxFit.cover
                    )
                ),
                child:Column(
                  children:[

                    SizedBox(

                      height:110.0,

                    ),

                    CircleAvatar(
                      radius: 60.0,
                      backgroundColor: Colors.teal,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/login_image.png"),
                        radius: 56.0,
                      ),
                    ),
                  ]
                ),


              ),

              SizedBox(

                height:20.0,

              ),
              Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(
                height: 3.0,
                width: 100.0,
                child: const DecoratedBox(
                  decoration: const BoxDecoration(
                      color: Colors.teal
                  ),
                ),
              ),
              SizedBox(
                height:20.0,
              ),

              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            hintText: "Enter username",
                            labelText: "Username"
                        ),
                      ),
                      SizedBox(
                        height:20.0,
                      ),

                      TextFormField(
                        obscureText: true,

                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.password),
                            hintText: "Enter password",
                            labelText: "Password",
                        ),
                      ),
                      SizedBox(
                        height:40.0,
                      ),
                      ElevatedButton(
                          child:Text("Login"),
                          style: TextButton.styleFrom(),
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => HomePage()),
                            );
                          },
                      ),

                    ],
                  ),

              )


            ],
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
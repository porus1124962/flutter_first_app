import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            color: Theme.of(context).scaffoldBackgroundColor,
            child: Column(

              children: [
                Container(
                    height: 350,
                    width:MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/teal.jpg"),
                            fit: BoxFit.cover
                        )
                    ),
                    child:Center(
                      child: CircleAvatar(
                        radius: 60.0,
                        backgroundColor: Colors.teal,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/login_image.png"),
                          radius: 56.0,
                        ),
                      ),
                    ),


                  ),

                SizedBox(
                  height:20.0,
                ),
                Stack(
                  alignment: AlignmentDirectional.bottomStart,
                   children: <Widget>[
                     Text(
                       "Welcome",
                       style: TextStyle(
                         fontSize: 24,
                         fontWeight: FontWeight.bold,
                         color: Theme.of(context).accentColor,
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
                   ],
                ),



                SizedBox(
                  height:20.0,
                ),

                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                    child: Column(
                      children: [
                        TextFormField(
                          style: TextStyle(
                            color: Theme.of(context).accentColor,
                          ),
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email, color: Theme.of(context).primaryColor,),
                              hintText: "Enter username",
                              labelText: "Username",
                              labelStyle: TextStyle(
                                color: Theme.of(context).primaryColor,
                              ),
                              hintStyle: TextStyle(
                                color:Colors.grey,
                              ),
                              fillColor: Theme.of(context).primaryColor,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Theme.of(context).primaryColor),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Theme.of(context).primaryColor),
                            ),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Theme.of(context).primaryColor),
                            ),
                              ),
                        ),

                        SizedBox(
                          height:20.0,
                        ),

                        TextFormField(
                          style: TextStyle(
                            color: Theme.of(context).accentColor,
                          ),
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.password, color: Theme.of(context).primaryColor,),
                            hintText: "Enter Password",
                            labelText: "Password",
                            labelStyle: TextStyle(
                              color: Theme.of(context).primaryColor,
                            ),
                            hintStyle: TextStyle(
                              color:Colors.grey,
                            ),
                            fillColor: Theme.of(context).primaryColor,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Theme.of(context).primaryColor),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Theme.of(context).primaryColor),
                            ),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Theme.of(context).primaryColor),
                            ),
                          ),
                        ),
                        SizedBox(
                          height:40.0,
                        ),
                        ElevatedButton(
                            child:Text("Login"),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor),
                              shape: MaterialStateProperty.all(StadiumBorder())
                          ),
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
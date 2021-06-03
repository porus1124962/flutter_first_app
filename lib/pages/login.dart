import 'package:flutter/material.dart';
import 'package:flutter_first_app/pages/home_page.dart';

class LoginPage extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Gallary"),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_image.png",
                height: 250,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height:20.0,
              ),
              Text(
                "Welcom",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
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
                            hintText: "Enter username",
                            labelText: "Username"
                        ),
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Enter password",
                            labelText: "Password",
                        ),
                      ),
                      SizedBox(
                        height:20.0,
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
    );
  }
}
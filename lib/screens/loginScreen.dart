import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'homeScreen.dart';




class LoginScreen extends StatefulWidget {
  const LoginScreen ({super.key});
  @override
  State<LoginScreen> createState () => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  String email = '';
  String pass = '';
  Color borderColor = Colors.blue;
  // class use to validate email pattern
  RegExp emailValidator = RegExp(r'^[^@]+@[^@]+\.[^@]+$');

  @override
  Widget build (BuildContext  context) {

    return Scaffold (
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),

          child: Center(
            child: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.5 ,
              
              
                decoration : BoxDecoration (
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        blurRadius: 5,
                      spreadRadius: 1
                    )
              
                  ]
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column (
              
                    crossAxisAlignment: CrossAxisAlignment.stretch,
              
                    children: [
              
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text (
                            'Login',
                            style: TextStyle (
                              color: Colors.black,
                              fontSize: 30
                            )
                        ),
                      ),
              
                      SizedBox(height: 20),
              
                      // email field
                      TextField (
                        onChanged: (value) {
                          email = value;
                        },
                        keyboardType: TextInputType.emailAddress,
              
              
                        decoration : InputDecoration (
                          labelText: 'Email',
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: borderColor)
                          )
                        )
                      ),
                      SizedBox(height: 15),
              
                      // pass field
                      TextField (
              
                        onChanged: (value) {
                          pass = value;
                        },
                        obscureText : true ,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: borderColor)
                          )
                        )
              
                      ),
              
                      SizedBox(height: 50),
              
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 100.0),
                        child: TextButton (
              
                          onPressed : () {
                            if (pass.isNotEmpty && email.isNotEmpty && emailValidator.hasMatch(email)) {
                              Navigator.push(context, MaterialPageRoute(builder: (_) {
                                return HomeScreen (email:  email,);
                              }));
                              setState(() {
                                borderColor = Colors.blue;
                              });
                            }else {
                              setState(() {
                                borderColor = Colors.red;
                              });
                            }
                          },
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.blue,
              
                            ),
                          child : Text (
                            'Login',
                            style: TextStyle(
                              color: Colors.white
                            )
                          )
                        ),
                      ),
              
              
                      SizedBox(height: 15),
              
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 100.0),
                        child: TextButton (
                            onPressed : () {
              
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.blue,
              
                            ),
                            child : Text (
                                'Forgot Password',
                              style: TextStyle(
                                  color: Colors.white
                              )
                            )
                        ),
                      ),
              
                    ]
                  ),
                ),
              ),
            ),
          ),
        ),
      )
    );
  }
}
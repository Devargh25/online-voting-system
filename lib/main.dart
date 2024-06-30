import 'package:begining/System.dart';
import 'package:begining/loginScreen.dart';
import 'package:begining/register.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context) => Mylogin(),
      'register': (context) => Myregister(),
      'main' : (context) => voting_app()
    },
  ));

}


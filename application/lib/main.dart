import 'package:flutter/material.dart';
import 'package:flutterapp/SignIn/welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Western Colorado Adventure Trail',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: WelcomePage(),


    );
  }
}
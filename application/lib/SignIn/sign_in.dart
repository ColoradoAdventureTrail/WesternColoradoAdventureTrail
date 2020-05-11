import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutterapp/home_map_page.dart';

class LoginPage extends StatefulWidget{
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email, _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sign In'),
        ),
        body: Form(
            key: _formKey,
            child: Column(
                children: <Widget>[
                  TextFormField(
                    validator: (input) {
                      if (input.isEmpty) {
                        return 'please type email';
                      }
                    },
                    onSaved: (input) => _email = input,
                    decoration: InputDecoration(
                        labelText: 'Email'
                    ),
                  ),
                  TextFormField(
                    validator: (input) {
                      if (input.length < 6) {
                        return 'your password 6 characters';
                      }
                    },
                    onSaved: (input) => _password = input,
                    decoration: InputDecoration(
                        labelText: 'password'
                    ),
                    obscureText: true,
                  ),
                  RaisedButton(
                    onPressed: signIn,
                    child: Text('Sign in'),
                  )
                ]
            )
        )
    );
  }

  Future<void> signIn() async{
    final formState = _formKey.currentState;
    if (formState.validate()) {
      formState.save();
      try{
        FirebaseUser user = (await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email.trim(), password: _password)).user;
// navigate to home
      Navigator.push(context, MaterialPageRoute(builder:(context) =>HomePage()));
      }catch(e){
        print(e.message);
      }

    }
  }
}
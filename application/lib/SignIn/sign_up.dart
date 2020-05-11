import 'package:flutterapp/SignIn/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';



class SignUpPage extends StatefulWidget{
  @override
  _SignUpState createState() => _SignUpState();

}

class _SignUpState extends State<SignUpPage>{
  String _email, _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sign Up'),
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
                    onPressed: signUp,
                    child: Text('Sign Up'),
                  )
                ]
            )
        )
    );
  }

  Future<void> signUp() async{
    final formState = _formKey.currentState;
    if (formState.validate()) {
      formState.save();
      try{
        FirebaseUser user = (await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _email.trim(), password: _password)).user;
        user.sendEmailVerification();
        Navigator.of(context).pop();
        Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) =>LoginPage()));
      }catch(e){
        print(e.message);
      }

    }
  }
}
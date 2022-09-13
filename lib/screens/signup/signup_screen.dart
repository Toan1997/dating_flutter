import 'package:flutter/material.dart';
import '../signup/components/body.dart';

class SignupScreen extends StatelessWidget{
  static String routeName = "/signup";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text( "Sign Up",
            style: TextStyle(
              color: Color(0XFF8B8B8B),
              fontSize: 18,
            ),
          ),
        ),
      body: Body(),
    );
  }

}